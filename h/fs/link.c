/*************************************************************************//**
 *****************************************************************************
 * @file   link.c
 * @brief  
 * @author Forrest Y. Yu
 * @date   Tue Jun  3 17:05:10 2008
 *****************************************************************************
 *****************************************************************************/

#include "type.h"
#include "stdio.h"
#include "const.h"
#include "protect.h"
#include "string.h"
#include "fs.h"
#include "proc.h"
#include "tty.h"
#include "console.h"
#include "global.h"
#include "keyboard.h"
#include "proto.h"


/*****************************************************************************
 *                                do_unlink
 *****************************************************************************/
/**
 * Remove a file.
 *
 * @note We clear the i-node in inode_array[] although it is not really needed.
 *       We don't clear the data bytes so the file is recoverable.
 * 
 * @return On success, zero is returned.  On error, -1 is returned.
 *****************************************************************************/
PUBLIC int do_unlink()
{
	char pathname[MAX_PATH];

	/* get parameters from the message */
	int name_len = fs_msg.NAME_LEN;	/* length of filename */
	int src = fs_msg.source;	/* caller proc nr. */
	assert(name_len < MAX_PATH);
	phys_copy((void*)va2la(TASK_FS, pathname),
		  (void*)va2la(src, fs_msg.PATHNAME),
		  name_len);
	pathname[name_len] = 0;

	if (strcmp(pathname , "/") == 0) {
		printl("FS:do_unlink():: cannot unlink the root\n");
		return -1;
	}

	int inode_nr = search_file(pathname);
	if (inode_nr == INVALID_INODE) {	/* file not found */
		printl("FS::do_unlink():: search_file() returns "
			"invalid inode: %s\n", pathname);
		return -1;
	}

	char filename[MAX_PATH];
	struct inode * dir_inode;
	if (strip_path(filename, pathname, &dir_inode) != 0)
		return -1;

	struct inode * pin = get_inode(dir_inode->i_dev, inode_nr);

	if (pin->i_mode != I_REGULAR) { /* can only remove regular files */
		printl("cannot remove file %s, because "
		       "it is not a regular file.\n",
		       pathname);
		return -1;
	}

	if (pin->i_cnt > 1) {	/* the file was opened */
		printl("cannot remove file %s, because pin->i_cnt is %d.\n",
		       pathname, pin->i_cnt);
		return -1;
	}

	struct super_block * sb = get_super_block(pin->i_dev);

	/*************************/
	/* free the bit in i-map */
	/*************************/
	int byte_idx = inode_nr / 8;
	int bit_idx = inode_nr % 8;
	assert(byte_idx < SECTOR_SIZE);	/* we have only one i-map sector */
	/* read sector 2 (skip bootsect and superblk): */
	RD_SECT(pin->i_dev, 2);
	assert(fsbuf[byte_idx % SECTOR_SIZE] & (1 << bit_idx));
	fsbuf[byte_idx % SECTOR_SIZE] &= ~(1 << bit_idx);
	WR_SECT(pin->i_dev, 2);

	/**************************/
	/* free the bits in s-map */
	/**************************/
	/*
	 *           bit_idx: bit idx in the entire i-map
	 *     ... ____|____
	 *                  \        .-- byte_cnt: how many bytes between
	 *                   \      |              the first and last byte
	 *        +-+-+-+-+-+-+-+-+ V +-+-+-+-+-+-+-+-+
	 *    ... | | | | | |*|*|*|...|*|*|*|*| | | | |
	 *        +-+-+-+-+-+-+-+-+   +-+-+-+-+-+-+-+-+
	 *         0 1 2 3 4 5 6 7     0 1 2 3 4 5 6 7
	 *  ...__/
	 *      byte_idx: byte idx in the entire i-map
	 */
	// bit_idx 应该怎么理解？
	// 第一种理解，从n_1st_sect到i_start_sect包含的扇区数量。
	// 第二种理解，bit_idx是sector-map的索引，sector-map的索引的第0位是保留的，比数据区的扇区的序号大1。
	// 假如 n_1st_sect = 0，i_start_sect = 1，那么，bit_idx = 2。
	// 具体情况是：在sector-map中，第0号是保留位，第1号是n_1st_sect，第2号是i_start_sect。
	// 像这种corner case，让我很烦。实在说不清为啥如此，那就这么说吧，这是用归纳法归纳出来的计算公式。
	// n_1st_sect = 1，i_start_sect = 3， bit_idx = 4。
	// 上面的理解非常混乱。
	// pin->i_start_sect、 sb->n_1st_sect 都是 LBA 地址。
	// 二者的差，是两个刻度之间的偏移量。
	// 但是，我需要的，不是这两个刻度之间的偏移量，而是i_start_sect在sector-map中对应的bit和sector-map的第0号bit的偏移量。
	// 目标偏移量 = i_start_sect - n_1st_sect + 1。n_1st_sect在sector-map中对应第1号bit。
	bit_idx  = pin->i_start_sect - sb->n_1st_sect + 1;
	byte_idx = bit_idx / 8;
	int bits_left = pin->i_nr_sects;
	// bits_left 是数量还是初始值是0的索引？是数量。
	// byte_cnt 是数量还是初始值是0的索引？
	// 当 bits_left = 1 时，bit_idx = 1，byte_cnt = 0。
	int byte_cnt = (bits_left - (8 - (bit_idx % 8))) / 8;

	// s是什么？它是目标文件占用的扇区在sector-map中的索引。
	// 再具体一些，读取第s号扇区（初始值是0），所读取到一个扇区的数据记录目标文件在数据区域
	// 的最开始的512*8个扇区（初始值是0）的使用情况。
	/* current sector nr. */
	int s = 2  /* 2: bootsect + superblk */
		+ sb->nr_imap_sects + byte_idx / SECTOR_SIZE;

	RD_SECT(pin->i_dev, s);

	int i;
	// 为什么需要特殊处理the first byte？
	// 因为第一个字节的前N个bit记录了目标文件的sector的使用情况，第一个字节的(8-N)和目标文件毫无关系。
	// bit_idx 是目标文件在数据区占用的扇区的数量。
	// bit_idx % 8 是把bit数量换算成字节数量后不足一个字节的bit数量。
	// byte_idx 是把bit数量换算成字节数量。
	// byte_idx % SECTOR_SIZE 是把字节数量换算成扇区数量后不足一个扇区的剩余的字节数量。
	// i < 8，为什么不是 i <= 8？这类问题，举例理解最好。
	// 当 bit_idx % 8 = 0 时，i的范围是[0,7]，正好8个，一个字节。
	// 当 bit_idx % 8 = 1 时，i的范围是[1, 7]，正好7个，加上前面的第0个，一个字节。
	// 现在回答为什么不是 i <= 8？因为 i <= 8时，处理的bit数加上前面未处理的字节数，总计9个bit。
	// 而我们只应该处理8个bit，也就是，我们只应该处理1个字节。
	/* clear the first byte */
	for (i = bit_idx % 8; (i < 8) && bits_left; i++,bits_left--) {
		assert((fsbuf[byte_idx % SECTOR_SIZE] >> i & 1) == 1);
		fsbuf[byte_idx % SECTOR_SIZE] &= ~(1 << i);
	}

	// the second to last 倒数第二
	// 从第二个到倒数第二个字节，全部设置成0。
	/* clear bytes from the second byte to the second to last */
	int k;
	i = (byte_idx % SECTOR_SIZE) + 1;	/* the second byte */
	// 为什么不是 k <= byte_cnt ？
	// 仍然举例子。
	// 当 byte_cnt = 1 时，这个循环执行一次，仍有未处理完的bit。
	for (k = 0; k < byte_cnt; k++,i++,bits_left-=8) {
		if (i == SECTOR_SIZE) {	
			i = 0;
			WR_SECT(pin->i_dev, s);
			RD_SECT(pin->i_dev, ++s);
		}
		assert(fsbuf[i] == 0xFF);
		fsbuf[i] = 0;
	}

	// 未处理完的bit，在最后一个字节处理。
	// 最后一个字节，又需要特殊处理。为什么？
	/* clear the last byte */
	if (i == SECTOR_SIZE) {
		i = 0;
		WR_SECT(pin->i_dev, s);
		RD_SECT(pin->i_dev, ++s);
	}
	unsigned char mask = ~((unsigned char)(~0) << bits_left);
	assert((fsbuf[i] & mask) == mask);
	fsbuf[i] &= (~0) << bits_left;
	WR_SECT(pin->i_dev, s);

	/***************************/
	/* clear the i-node itself */
	/***************************/
	pin->i_mode = 0;
	pin->i_size = 0;
	pin->i_start_sect = 0;
	pin->i_nr_sects = 0;
	sync_inode(pin);
	/* release slot in inode_table[] */
	put_inode(pin);

	/************************************************/
	/* set the inode-nr to 0 in the directory entry */
	/************************************************/
	// dir_inode是根目录的inode。
	int dir_blk0_nr = dir_inode->i_start_sect;
	// dir_inode->i_size + SECTOR_SIZE 这是什么？
	// 根目录的大小加一个扇区的字节数，是什么意思？
	// 1. nr_dir_blks是遍历根目录的循环的终止条件中使用的标志数据。
	// 2. 需要保证，这个循环至少执行一次。
	// 3. 所以，需要保证nr_dir_blks大于等于1。而在循环中，记录循环次数的变量小于nr_dir_blks。
	// 4. 如果记录循环次数的变量小于等于nr_dir_blks，此处，并不需要把根目录的大小加上一个扇区。
	int nr_dir_blks = (dir_inode->i_size + SECTOR_SIZE) / SECTOR_SIZE;
	// nr_dir_entries 又是什么？
	// 不该问这个问题。很明显，它是根目录中包含的目录项数量。
	int nr_dir_entries =
		dir_inode->i_size / DIR_ENTRY_SIZE; /* including unused slots
						     * (the file has been
						     * deleted but the slot
						     * is still there)
						     */
	int m = 0;
	struct dir_entry * pde = 0;
	int flg = 0;
	int dir_size = 0;

	// 看懂了本循环的大概意思。
	// 1.第一层循环，遍历根目录占用的所有扇区。
	// 2.第二层循环，遍历一个扇区包含的每个目录项。
	// 3.在第二层循环中，比较当前目录项是不是目标目录项。
	// 4.比较目录项的条件是，比较目录项的inode_nr。
	// 5.清除目录项的方法是，把目标目录项占用的内存空间的数据设置成0。 
	//
	// 看不明白的地方：nr_dir_blks、nr_dir_entries。
	for (i = 0; i < nr_dir_blks; i++) {
		RD_SECT(dir_inode->i_dev, dir_blk0_nr + i);

		// pde这句，对指针的使用，我见过多次了。
		pde = (struct dir_entry *)fsbuf;
		int j;
		for (j = 0; j < SECTOR_SIZE / DIR_ENTRY_SIZE; j++,pde++) {
			// 是否多余？
			// 移动到 if (pde->inode_nr == inode_nr) 这个判断中，更合理吧？
			// 我以为，m是清理掉的根目录项的数量。
			// 上面的理解不正确。m记录遍历根目录的次数。
			// 为什么不是m++？因为，表示根目录自身的根目录项不需要遍历。
			if (++m > nr_dir_entries)
				break;

			if (pde->inode_nr == inode_nr) {
				/* pde->inode_nr = 0; */
				memset(pde, 0, DIR_ENTRY_SIZE);
				WR_SECT(dir_inode->i_dev, dir_blk0_nr + i);
				flg = 1;
				break;
			}

			// 记录根目录的大小
			if (pde->inode_nr != INVALID_INODE)
				dir_size += DIR_ENTRY_SIZE;
		}

		// flag == 1，表示，已经找到了目标目录项。
		if (m > nr_dir_entries || /* all entries have been iterated OR */
		    flg) /* file is found */
			break;
	}
	assert(flg);
	
	// 当根目录中的所有目录项被清除掉时，根目录的大小是0。	
	// 遍历完根目录，才更新根目录的inode。
	// 没有遍历完，为啥不能更新？
	if (m == nr_dir_entries) { /* the file is the last one in the dir */
		dir_inode->i_size = dir_size;
		sync_inode(dir_inode);
	}

	return 0;
}
