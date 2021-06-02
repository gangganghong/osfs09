/*************************************************************************//**
 *****************************************************************************
 * @file   read_write.c
 * @brief  
 * @author Forrest Y. Yu
 * @date   2008
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
 *                                do_rdwt
 *****************************************************************************/
/**
 * Read/Write file and return byte count read/written.
 *
 * Sector map is not needed to update, since the sectors for the file have been
 * allocated and the bits are set when the file was created.
 * 
 * @return How many bytes have been read/written.
 *****************************************************************************/
PUBLIC int do_rdwt()
{
	int fd = fs_msg.FD;	/**< file descriptor. */
	void * buf = fs_msg.BUF;/**< r/w buffer */
	int len = fs_msg.CNT;	/**< r/w bytes */

	int src = fs_msg.source;		/* caller proc nr. */
	// 文件描述符必须在第一个文件描述和最后一个文件描述符之间。
	// 这里的比较方法是：比较内存地址。
	assert((pcaller->filp[fd] >= &f_desc_table[0]) &&
	       (pcaller->filp[fd] < &f_desc_table[NR_FILE_DESC]));

	// 文件是可读写的
	if (!(pcaller->filp[fd]->fd_mode & O_RDWR))
		return -1;

	int pos = pcaller->filp[fd]->fd_pos;

	struct inode * pin = pcaller->filp[fd]->fd_inode;

	// 检查inode的方法，必须在inode_table中。也是比较内存地址。
	assert(pin >= &inode_table[0] && pin < &inode_table[NR_INODE]);

	// 什么意思？
	int imode = pin->i_mode & I_TYPE_MASK;

	// 看不懂。
	if (imode == I_CHAR_SPECIAL) {
		int t = fs_msg.type == READ ? DEV_READ : DEV_WRITE;
		fs_msg.type = t;

		int dev = pin->i_start_sect;
		assert(MAJOR(dev) == 4);

		fs_msg.DEVICE	= MINOR(dev);
		fs_msg.BUF	= buf;
		fs_msg.CNT	= len;
		fs_msg.PROC_NR	= src;
		assert(dd_map[MAJOR(dev)].driver_nr != INVALID_DRIVER);
		send_recv(BOTH, dd_map[MAJOR(dev)].driver_nr, &fs_msg);
		assert(fs_msg.CNT == len);

		return fs_msg.CNT;
	}
	else {
		assert(pin->i_mode == I_REGULAR || pin->i_mode == I_DIRECTORY);
		assert((fs_msg.type == READ) || (fs_msg.type == WRITE));

		int pos_end;
		if (fs_msg.type == READ)
			pos_end = min(pos + len, pin->i_size);
		else		/* WRITE */
			pos_end = min(pos + len, pin->i_nr_sects * SECTOR_SIZE);

		int off = pos % SECTOR_SIZE;
		int rw_sect_min=pin->i_start_sect+(pos>>SECTOR_SIZE_SHIFT);
		int rw_sect_max=pin->i_start_sect+(pos_end>>SECTOR_SIZE_SHIFT);
		// rw_sect_max - rw_sect_min + 1 难理解。
		// 这种小细节，很让我烦恼。
		// 初始扇区号是1，末尾扇区号是2，这个文件一共有多少个扇区？答案是2个，而不是1个。
		// 用归纳法，可以知道，
		// 本文件从pos到pos_end一共包含（rw_sect_max - rw_sect_min + 1）个扇区。
		// chunk是本文件剩余扇区数或fsbuf的最大容量的扇区数。
		int chunk = min(rw_sect_max - rw_sect_min + 1,
				FSBUF_SIZE >> SECTOR_SIZE_SHIFT);

		int bytes_rw = 0;
		int bytes_left = len;
		int i;
		// 虽然使用了循环，但是，这个循环只执行一次。
		// 这是由i的增量chunk决定的。
		for (i = rw_sect_min; i <= rw_sect_max; i += chunk) {
			/* read/write this amount of bytes every time */
			// 怎么理解 chunk * SECTOR_SIZE - off ？
			// 为啥不是chunk * SECTOR_SIZE？
			// 请看下面的phys_copy中的fsbuf + off。
			// fsbuf中的数据的长度是chunk * SECTOR_SIZE。
			// 但是，属于要读取的数据的长度却是 chunk * SECTOR_SIZE - off。
			// 为什么这样说？   
			// 用实际例子来理解，很容易理解这个问题。
			// 1. 当pos = 一个扇区的长度时，rw_sect_min = 文件的初始扇区 + 1，off = 0，
			// 2. 当pos = M个扇区的长度 + N个bit时，rw_sect_min = 文件的初始扇区 + M，
			// off = N。
			// 读数据时，初始扇区是rw_sect_min，长度是M个扇区。可是，在M个扇区中，有off
			// 个bit属于pos之前的数据，不属于本次要读取的新数据，应该减去。 
			//
			// 上面的逻辑，不是经典算法，也没有通用性，是普通逻辑，但我却花了这么多时间。
			// 我认为，这些问题，没有多大价值。投入大量时间，却无收益。
			// 可是，我想自己写一个操作系统。如果我不理解这些普通逻辑，我就不能自己写出
			// 操作系统。
			int bytes = min(bytes_left, chunk * SECTOR_SIZE - off);
			rw_sector(DEV_READ,
				  pin->i_dev,
				  i * SECTOR_SIZE,
				  chunk * SECTOR_SIZE,
				  TASK_FS,
				  fsbuf);

			if (fs_msg.type == READ) {
				// fsbuf + off 怎么理解？
				// RW_SECT读取了多个扇区，从这多个扇区的初始扇区开始往后移动off个字节。
				// 这是啥意思？
				// 我会怎么做？
				phys_copy((void*)va2la(src, buf + bytes_rw),
					  (void*)va2la(TASK_FS, fsbuf + off),
					  bytes);
			}
			else {	/* WRITE */
				phys_copy((void*)va2la(TASK_FS, fsbuf + off),
					  (void*)va2la(src, buf + bytes_rw),
					  bytes);
				// 用fsbuf和off之间的内容覆盖了硬盘中的部分数据。
				// 有没有问题？没有。因为，使用的是和硬盘中的那部分相同的数据。
				rw_sector(DEV_WRITE,
					  pin->i_dev,
					  i * SECTOR_SIZE,
					  chunk * SECTOR_SIZE,
					  TASK_FS,
					  fsbuf);
			}
			off = 0;
			// bytes_rw记录数据在buf中的位置。
			// READ，buf存储从硬盘中读取到的数据；WRITE，buf存储要写入到硬盘的数据。
			bytes_rw += bytes;
			pcaller->filp[fd]->fd_pos += bytes;
			bytes_left -= bytes;
		}

		// 看似简单，却包含了多种情况。这可能是归纳后的代码。
		// 1. fd_pos的合法值不会超过i_size。因为，读写一个文件，读写位置不会超出这个文件的大小.
		// 2. 读文件，无论如何读，不会把文件的长度读大了。所以，本段代码只处理写文件的情况。
		// 3. 写文件，文件的长度自然会增加，所以，i_size需要更新。
		// 4. 剩余的，就是让我烦恼的corner case了。fd_pos，实际长度是fd_pos + 1吗？
		// 5. 只需记住，在整个系统中，初始值在任何时候保持一致，就不会出问题。
		if (pcaller->filp[fd]->fd_pos > pin->i_size) {
			/* update inode::size */
			pin->i_size = pcaller->filp[fd]->fd_pos;

			/* write the updated i-node back to disk */
			sync_inode(pin);
		}

		return bytes_rw;
	}
}
