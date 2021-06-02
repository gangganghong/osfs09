/*************************************************************************//**
 *****************************************************************************
 * @file   main.c
 * @brief  
 * @author Forrest Y. Yu
 * @date   2007
 *****************************************************************************
 *****************************************************************************/

#include "type.h"
#include "config.h"
#include "stdio.h"
#include "const.h"
#include "protect.h"
#include "string.h"
#include "fs.h"
#include "proc.h"
#include "tty.h"
#include "console.h"
#include "global.h"
#include "proto.h"

#include "hd.h"

PRIVATE void init_fs();
PRIVATE void mkfs();
PRIVATE void read_super_block(int dev);

/*****************************************************************************
 *                                task_fs
 *****************************************************************************/
/**
 * <Ring 1> The main loop of TASK FS.
 * 
 *****************************************************************************/
PUBLIC void task_fs()
{
	printl("Task FS begins.\n");

	init_fs();

	while (1) {
		send_recv(RECEIVE, ANY, &fs_msg);

		int src = fs_msg.source;
		pcaller = &proc_table[src];

		switch (fs_msg.type) {
		case OPEN:
			fs_msg.FD = do_open();
			break;
		case CLOSE:
			fs_msg.RETVAL = do_close();
			break;
		/* case READ: */
		/* case WRITE: */
		/* 	fs_msg.CNT = do_rdwt(); */
		/* 	break; */
		/* case LSEEK: */
		/* 	fs_msg.OFFSET = do_lseek(); */
		/* 	break; */
		/* case UNLINK: */
		/* 	fs_msg.RETVAL = do_unlink(); */
		/* 	break; */
		/* case RESUME_PROC: */
		/* 	src = fs_msg.PROC_NR; */
		/* 	break; */
		/* case FORK: */
		/* 	fs_msg.RETVAL = fs_fork(); */
		/* 	break; */
		/* case EXIT: */
		/* 	fs_msg.RETVAL = fs_exit(); */
		/* 	break; */
		/* case STAT: */
		/* 	fs_msg.RETVAL = do_stat(); */
		/* 	break; */
		default:
			dump_msg("FS::unknown message:", &fs_msg);
			assert(0);
			break;
		}

		/* reply */
		fs_msg.type = SYSCALL_RET;
		send_recv(SEND, src, &fs_msg);
	}
}

/*****************************************************************************
 *                                init_fs
 *****************************************************************************/
/**
 * <Ring 1> Do some preparation.
 * 
 *****************************************************************************/
PRIVATE void init_fs()
{
	int i;

	/* f_desc_table[] */
	for (i = 0; i < NR_FILE_DESC; i++)
		memset(&f_desc_table[i], 0, sizeof(struct file_desc));

	/* inode_table[] */
	for (i = 0; i < NR_INODE; i++)
		memset(&inode_table[i], 0, sizeof(struct inode));

	/* super_block[] */
	struct super_block * sb = super_block;
	for (; sb < &super_block[NR_SUPER_BLOCK]; sb++)
		sb->sb_dev = NO_DEV;

	/* open the device: hard disk */
	MESSAGE driver_msg;
	driver_msg.type = DEV_OPEN;
	driver_msg.DEVICE = MINOR(ROOT_DEV);
	assert(dd_map[MAJOR(ROOT_DEV)].driver_nr != INVALID_DRIVER);
	send_recv(BOTH, dd_map[MAJOR(ROOT_DEV)].driver_nr, &driver_msg);

	/* make FS */
	mkfs();

	/* load super block of ROOT */
	read_super_block(ROOT_DEV);

	sb = get_super_block(ROOT_DEV);
	assert(sb->magic == MAGIC_V1);

	root_inode = get_inode(ROOT_DEV, ROOT_INODE);
}

/*****************************************************************************
 *                                mkfs
 *****************************************************************************/
/**
 * <Ring 1> Make a available Orange'S FS in the disk. It will
 *          - Write a super block to sector 1.
 *          - Create three special files: dev_tty0, dev_tty1, dev_tty2
 *          - Create the inode map
 *          - Create the sector map
 *          - Create the inodes of the files
 *          - Create `/', the root directory
 *****************************************************************************/
PRIVATE void mkfs()
{
	MESSAGE driver_msg;
	int i, j;

	int bits_per_sect = SECTOR_SIZE * 8; /* 8 bits per byte */

	/* get the geometry of ROOTDEV */
	struct part_info geo;
	driver_msg.type		= DEV_IOCTL;
	driver_msg.DEVICE	= MINOR(ROOT_DEV);
	driver_msg.REQUEST	= DIOCTL_GET_GEO;
	driver_msg.BUF		= &geo;
	driver_msg.PROC_NR	= TASK_FS;
	assert(dd_map[MAJOR(ROOT_DEV)].driver_nr != INVALID_DRIVER);
	send_recv(BOTH, dd_map[MAJOR(ROOT_DEV)].driver_nr, &driver_msg);

	printl("dev size: 0x%x sectors\n", geo.size);

	/************************/
	/*      super block     */
	/************************/
	struct super_block sb;
	sb.magic	  = MAGIC_V1;
	sb.nr_inodes	  = bits_per_sect;
	sb.nr_inode_sects = sb.nr_inodes * INODE_SIZE / SECTOR_SIZE;
	sb.nr_sects	  = geo.size; /* partition size in sector */
	sb.nr_imap_sects  = 1;
	sb.nr_smap_sects  = sb.nr_sects / bits_per_sect + 1;
	// sb.n_1st_sect是扇区的数量，不是索引。
	// 正因为如此，在alloc_smap_bit函数中，sector_map中有效bit的初始索引是
	// sb.n_1st_sect - 1，而不是 sb.n_1st_sect。
	sb.n_1st_sect	  = 1 + 1 +   /* boot sector & super block */
		sb.nr_imap_sects + sb.nr_smap_sects + sb.nr_inode_sects;
	sb.root_inode	  = ROOT_INODE;
	sb.inode_size	  = INODE_SIZE;
	struct inode x;
	sb.inode_isize_off= (int)&x.i_size - (int)&x;
	sb.inode_start_off= (int)&x.i_start_sect - (int)&x;
	sb.dir_ent_size	  = DIR_ENTRY_SIZE;
	struct dir_entry de;
	sb.dir_ent_inode_off = (int)&de.inode_nr - (int)&de;
	sb.dir_ent_fname_off = (int)&de.name - (int)&de;

	memset(fsbuf, 0x90, SECTOR_SIZE);
	memcpy(fsbuf, &sb, SUPER_BLOCK_SIZE);

	/* write the super block */
	WR_SECT(ROOT_DEV, 1);

	printl("devbase:0x%x00, sb:0x%x00, imap:0x%x00, smap:0x%x00\n"
	       "        inodes:0x%x00, 1st_sector:0x%x00\n", 
	       geo.base * 2,
	       (geo.base + 1) * 2,
	       (geo.base + 1 + 1) * 2,
	       (geo.base + 1 + 1 + sb.nr_imap_sects) * 2,
	       (geo.base + 1 + 1 + sb.nr_imap_sects + sb.nr_smap_sects) * 2,
	       (geo.base + sb.n_1st_sect) * 2);

	/************************/
	/*       inode map      */
	/************************/
	memset(fsbuf, 0, SECTOR_SIZE);
	for (i = 0; i < (NR_CONSOLES + 2); i++)
		fsbuf[0] |= 1 << i;

	assert(fsbuf[0] == 0x1F);/* 0001 1111 : 
				  *    | ||||
				  *    | |||`--- bit 0 : reserved
				  *    | ||`---- bit 1 : the first inode,
				  *    | ||              which indicates `/'
				  *    | |`----- bit 2 : /dev_tty0
				  *    | `------ bit 3 : /dev_tty1
				  *    `-------- bit 4 : /dev_tty2
				  */
	// 第一个扇区是boot sector,第二个扇区是super block，扇区号分别是0、1。
	// i-node map在第三个扇区，扇区号是2。
	// 对，WR_SECT 的第二个参数是目标扇区号。
	WR_SECT(ROOT_DEV, 2);

	/************************/
	/*      secter map      */
	/************************/
	// 一个扇区用sector-map的一个bit表示使用情况。
	// sector map的处理逻辑是什么意思？把所有sector map都标记为1，意思是，所有扇区都被使用了。
	memset(fsbuf, 0, SECTOR_SIZE);
	// 多少个扇区被使用？
	// 1(boot sector) + 1(super block) + 1(i-node map) + ?(sector map) + 
	// ?(inode_array) + 1(root)
	// 上面的推理是错误的。
	// NR_DEFAULT_FILE_SECTS 是根目录占用的扇区数量，加上保留的第0个。
	// 这里说的是，在sector map中的bit位。在sector map中，值为1的bit的数量是
	// 1（0号bit） + NR_DEFAULT_FILE_SECTS（根目录占用的扇区的数量）。
	int nr_sects = NR_DEFAULT_FILE_SECTS + 1;
	/*             ~~~~~~~~~~~~~~~~~~~|~   |
	 *                                |    `--- bit 0 is reserved
	 *                                `-------- for `/'
	 */
	for (i = 0; i < nr_sects / 8; i++)
		fsbuf[i] = 0xFF;

	// i 的初始值从哪里来？在上面的for循环中初始化的i不能使用，因为那是局部变量。
	// 但是，这里的i是在本函数的开头声明的，在函数的开始到结束都能使用。
	// i 是其他字节的bit序号。这些剩余bit不足一个字节。
	for (j = 0; j < nr_sects % 8; j++)
		fsbuf[i] |= (1 << j);
	// 目标扇区号的本质是偏移量，即，在目标扇区的前面有多少个扇区。
	// 有多少个呢？1(boot sector) + 1(super block) + sb.nr_imap_sects
	// WR_SECT最多只写入一个扇区。fsbuf存储的数据超过一个扇区了吗？
	// 一个扇区的数据量是 512 * 8 = 4096 bit。
	// (NR_DEFAULT_FILE_SECTS + 1) 是 2049，比一个扇区的一半多一点，足够用WR_SECT写入。
	// 使用WR_SECT每次写入一个扇区即512字节，即使fsbuf存储的数据不足一个扇区。
	// WR_SECT的写入单位是扇区，每次写入一个扇区的数据。我们的目的是把(NR_DEFAULT_FILE_SECTS + 1)
	// 个bit设置成1。但我们写入的数据却是一个扇区。这个扇区的数据构成是：
	// (NR_DEFAULT_FILE_SECTS + 1)个1 + (512*8-NR_DEFAULT_FILE_SECTS-1)个0。
	// 写入这样的数据，符合要求吗？
	// 要求是什么？sector-map区域的前(NR_DEFAULT_FILE_SECTS + 1)个bit是1，其余bit全部是0。
	// 这个时候，WR_SECT已经在sector-map区域写入数据了。
	// 我的疑问是：在alloc_smap_bit中，我认为sector-map是对本分区所有扇区使用情况的记录。
	// 可是，在这里，我看到，在sector-map中从根目录开始记录扇区的使用情况，并没有记录根目录之前
	// 的boot sector等扇区的使用情况。二者矛盾。
	// 二者实际上并不矛盾。是我理解错误了。在alloc_smap_bit和get_inode中，sector-map也只是记录
	// 了本分区的数据区域的所有扇区的使用情况，并没有记录本分区中数据区域之外的扇区的使用情况。
	WR_SECT(ROOT_DEV, 2 + sb.nr_imap_sects);

	// 下面这个循环，实现什么功能？
	// 在前面，我写道：sector-map区域的前(NR_DEFAULT_FILE_SECTS + 1)个bit是1，其余bit全部是0。
	// 上面的WR_SECT设置前(NR_DEFAULT_FILE_SECTS + 1)个bit是1和部分bit是0，这里的WR_SECT设置
	// 全部的剩余bit是0。
	// 非常容易混淆的几个点：
	// 2 + sb.nr_imap_sects + i 是扇区偏移量。由于WR_SECT读写硬盘时，扇区的初始值是0，因此，
	// 扇区偏移量就是读写操作的目标扇区。可以举例证明这个结论。
	// 把存储了512*8个bit的fsbuf写入偏移量是(2 + sb.nr_imap_sects + i)的扇区，写入数据的长度也是
	// 512个字节。
	// 512*8个bit的fsbuf在写入之前，已经被设置成0。这样做，能避免写入脏数据。
	// sector-map中的每个bit记录一个扇区的使用情况。
	// 容易混淆的模糊点，好像仍然没有说清楚。
	/* zeromemory the rest sector-map */
	memset(fsbuf, 0, SECTOR_SIZE);
	for (i = 1; i < sb.nr_smap_sects; i++)
		WR_SECT(ROOT_DEV, 2 + sb.nr_imap_sects + i);


	// 初始化sector-map，其实很简单。把sector-map这片内存的所有bit设置初始值：
	// 1. 0号bit设置成1。
	// 2. (1~~根目录占用的扇区的字节数*8 + 1)号bit设置成1。
	// 2.1 其实就是把0号bit后面的目录占用的扇区的字节数*8个bit设置成1。
	// 3. 把sector-map这片内存的剩余bit全部设置成0。
	// 怎么实现呢？
	// 1. 第(1~~根目录占用的扇区的字节数*8 + 1)bit
	// 1.1 以字节为单位进行设置。
	// 1.2 不足一字节的，单独设置。已知这个字节在fsbuf中的索引，把这字节的几个bit设置成1。
	// 1.3 由于RW_SECT写入的是fsbuf中的数据，而fsbuf中的所有数据被memset设置成了0。所以，除了
	// 	我在前面设置成1的那些bit，这个扇区剩余的bit全部是0。
	// 2. 把sector-map这片内存的剩余bit全部设置成0，操作单位是扇区。
	// 2.1 在前面设置根目录在sector-map中的映射情况时，只设置了sector-map中的一个扇区。
	// 2.2 所以，设置sector-map中的剩余扇区的映射情况，可以使用一个循环。
	// 2.2.1 循环的初始值是1，终止条件是遍历(sb.nr_smap_sects-1)次。	

	/************************/
	/*       inodes         */
	/************************/
	/* inode of `/' */
	memset(fsbuf, 0, SECTOR_SIZE);
	struct inode * pi = (struct inode*)fsbuf;
	pi->i_mode = I_DIRECTORY;
	pi->i_size = DIR_ENTRY_SIZE * 4; /* 4 files:
					  * `.',
					  * `dev_tty0', `dev_tty1', `dev_tty2',
					  */
	pi->i_start_sect = sb.n_1st_sect;
	pi->i_nr_sects = NR_DEFAULT_FILE_SECTS;
	/* inode of `/dev_tty0~2' */
	for (i = 0; i < NR_CONSOLES; i++) {
		pi = (struct inode*)(fsbuf + (INODE_SIZE * (i + 1)));
		pi->i_mode = I_CHAR_SPECIAL;
		pi->i_size = 0;
		pi->i_start_sect = MAKE_DEV(DEV_CHAR_TTY, i);
		pi->i_nr_sects = 0;
	}
	WR_SECT(ROOT_DEV, 2 + sb.nr_imap_sects + sb.nr_smap_sects);

	/************************/
	/*          `/'         */
	/************************/
	memset(fsbuf, 0, SECTOR_SIZE);
	struct dir_entry * pde = (struct dir_entry *)fsbuf;

	pde->inode_nr = 1;
	strcpy(pde->name, ".");

	/* dir entries of `/dev_tty0~2' */
	for (i = 0; i < NR_CONSOLES; i++) {
		pde++;
		pde->inode_nr = i + 2; /* dev_tty0's inode_nr is 2 */
		sprintf(pde->name, "dev_tty%d", i);
	}
	WR_SECT(ROOT_DEV, sb.n_1st_sect);
}

/*****************************************************************************
 *                                rw_sector
 *****************************************************************************/
/**
 * <Ring 1> R/W a sector via messaging with the corresponding driver.
 * 
 * @param io_type  DEV_READ or DEV_WRITE
 * @param dev      device nr
 * @param pos      Byte offset from/to where to r/w.
 * @param bytes    r/w count in bytes.
 * @param proc_nr  To whom the buffer belongs.
 * @param buf      r/w buffer.
 * 
 * @return Zero if success.
 *****************************************************************************/
PUBLIC int rw_sector(int io_type, int dev, u64 pos, int bytes, int proc_nr,
		     void* buf)
{
	MESSAGE driver_msg;

	driver_msg.type		= io_type;
	driver_msg.DEVICE	= MINOR(dev);
	driver_msg.POSITION	= pos;
	driver_msg.BUF		= buf;
	driver_msg.CNT		= bytes;
	driver_msg.PROC_NR	= proc_nr;
	assert(dd_map[MAJOR(dev)].driver_nr != INVALID_DRIVER);
	send_recv(BOTH, dd_map[MAJOR(dev)].driver_nr, &driver_msg);

	return 0;
}


/*****************************************************************************
 *                                read_super_block
 *****************************************************************************/
/**
 * <Ring 1> Read super block from the given device then write it into a free
 *          super_block[] slot.
 * 
 * @param dev  From which device the super block comes.
 *****************************************************************************/
PRIVATE void read_super_block(int dev)
{
	int i;
	MESSAGE driver_msg;

	driver_msg.type		= DEV_READ;
	driver_msg.DEVICE	= MINOR(dev);
	driver_msg.POSITION	= SECTOR_SIZE * 1;
	driver_msg.BUF		= fsbuf;
	driver_msg.CNT		= SECTOR_SIZE;
	driver_msg.PROC_NR	= TASK_FS;
	assert(dd_map[MAJOR(dev)].driver_nr != INVALID_DRIVER);
	send_recv(BOTH, dd_map[MAJOR(dev)].driver_nr, &driver_msg);

	// 在 include/sys/global.h 中声明了全局变量 super_block。
	/* find a free slot in super_block[] */
	for (i = 0; i < NR_SUPER_BLOCK; i++)
		if (super_block[i].sb_dev == NO_DEV)
			break;
	if (i == NR_SUPER_BLOCK)
		panic("super_block slots used up");

	assert(i == 0); /* currently we use only the 1st slot */
	// fsbuf是一个内存地址，把psb指向这个内存地址的内存。
	// 从fsbuf这个内存地址开始，sizeof(struct super_block)大小的内存属于psb指向的那片内存。
	struct super_block * psb = (struct super_block *)fsbuf;

	super_block[i] = *psb;
	super_block[i].sb_dev = dev;
}


/*****************************************************************************
 *                                get_super_block
 *****************************************************************************/
/**
 * <Ring 1> Get the super block from super_block[].
 * 
 * @param dev Device nr.
 * 
 * @return Super block ptr.
 *****************************************************************************/
PUBLIC struct super_block * get_super_block(int dev)
{
	// 在 include/sys/global.h 中声明了全局变量 super_block。
	// super_block 是一个数组，也表示这个数组的内存地址。
	// 数组名是数组的内存地址，自然能够赋值给一个指针变量。
	struct super_block * sb = super_block;
	// 指针变量的值是内存地址，内存地址和内存地址是能够比较的。
	// &super_block[NR_SUPER_BLOCK] 是数组的最后一个元素后面的那个元素的内存地址。
	// 虽然数组的最后一个元素后面的那个元素，是非法的，但是，那里确实有一个内存空间，
	// 当然就能够获取那个内存空间的内存地址。
	// 这个循环的初始值是数组的第一个元素的内存地址，终止值是最后一个元素的内存地址。
	// 这种写法，我见过很多次了。
	for (; sb < &super_block[NR_SUPER_BLOCK]; sb++)
		if (sb->sb_dev == dev)
			return sb;

	panic("super block of devie %d not found.\n", dev);

	return 0;
}


/*****************************************************************************
 *                                get_inode
 *****************************************************************************/
/**
 * <Ring 1> Get the inode ptr of given inode nr. A cache -- inode_table[] -- is
 * maintained to make things faster. If the inode requested is already there,
 * just return it. Otherwise the inode will be read from the disk.
 * 
 * @param dev Device nr.
 * @param num I-node nr.
 * 
 * @return The inode ptr requested.
 *****************************************************************************/
PUBLIC struct inode * get_inode(int dev, int num)
{
	if (num == 0)
		return 0;

	// 本函数的难点，我没有看到把inode存储到inode_table中的代码。
	// 其实，有放入缓存inode_table中的代码，只是我没有理解而已。
	// 理解如下：
	// 1. inode_table是包含若干个inode的数组。
	// 2. q 是一个struct node * 指针，赋予它的值，应该是一个struct node类型的数据的内存地址。
	// 3. q = p，是合法语句。意思是，p是一个struct node类型的数据的内存地址，合法地赋予了q。
	// 4. 对q的一切操作，实际都是对内存地址是p的struct node类型的数据的操作，也就是对inode_table
	// 中的某个元素的操作。
	// 5. 比较新颖。不像PHP中那样，需要显式把新值保存到缓存中。
	struct inode * p;
	struct inode * q = 0;
	for (p = &inode_table[0]; p < &inode_table[NR_INODE]; p++) {
		if (p->i_cnt) {	/* not a free slot */
			if ((p->i_dev == dev) && (p->i_num == num)) {
				/* this is the inode we want */
				p->i_cnt++;
				return p;
			}
		}
		else {		/* a free slot */
			if (!q) /* q hasn't been assigned yet */
				q = p; /* q <- the 1st free slot */
		}
	}

	if (!q)
		panic("the inode table is full");

	q->i_dev = dev;
	q->i_num = num;
	q->i_cnt = 1;

	// num 是 inode-map 的索引(初始索引号是0）。再强调一次这个条件，不过分。
	// 阻碍我理解blk_nr和pinode的计算方法，就是因为没有发掘出这个条件。
	// 为什么能够认为具备"num = 1"这个条件。在其他地方发现了创建根目录时，num的值是1。
	// num的值是1，说明，num 是 inode-map 的索引（初始索引是0，而不是1）。
	// 如果 num 是 inode-map 的索引（初始索引号是1），那么，创建根目录的inode时，num的值应该是2。
	// 为什么？因为，第1个bit是保留位，第2个bit才是记录根目录的inode的bit。
	// 1 + 1 + sb->nr_imap_sects + sb->nr_smap_sects 正好是inode-array前面的那些存储空间。
	// 执行RD_SECT后，fsbuf正好读取到了inode-array前面的那些存储空间D中的数据。
	// D后面，是存储inode-array的空间M。
	// SECTOR_SIZE / INODE_SIZE，计算结果R是，一个扇区能够存储的inode数量。
	// N是inode-array的索引。
	// N / R，结果是，N在M的第几个扇区。
	// 一个关键问题：在这里，N是多少？更准确的问法：N和num的关系是怎样的？
	// num是inode-map的bit序号（初始值是0），N是inode-array的索引号（初始值也是0）。
	// inode-map的第0个bit（初始值是0）是保留位，第1个bit记录inode-array中第0个（初始值是0）
	// 元素的使用情况（有没有被使用）。所以，N = num - 1。
	struct super_block * sb = get_super_block(dev);
	int blk_nr = 1 + 1 + sb->nr_imap_sects + sb->nr_smap_sects +
		((num - 1) / (SECTOR_SIZE / INODE_SIZE));
	// blk_nr 是要读取的扇区的序号，初始序号是0。
	// 假如blk_nr是1，意思是，要读取序号为1的扇区。序号为1的扇区，
	// 实际上这个分区的第2个扇区（初始序号是1）。
	// 为什么blk_nr的计算方式是这样的？
	// 在kernel/hd.c中的hd_rdwt中，设置要读取的目标扇区的参数是LBA。
	// LBA的初始值是0。这意味着，要读取第1个扇区（初始值是1），LBA的值是0。
	// 要读取第3个扇区（初始值是1），LBA的值是2。
	// 要读取第N个扇区（初始值是1），LBA的值是N-1
	// 在这里，目标扇区是第(blk_nr + 1)个扇区（初始值是1），所以LBA的值是blk_nr。
	//
	// ((num - 1) / (SECTOR_SIZE / INODE_SIZE)) 的结果是：
	// 1. 刚好n个扇区。
	// 2. n个扇区 + 若干个bit
	// 3. n-1个扇区 + 若干个bit
	// 若干个bit的计算方法是：((num - 1 ) % (SECTOR_SIZE / INODE_SIZE)) * INODE_SIZE。
	// 上面的理解，过一段时间，我可能又会不理解。
	//
	// M的第几个扇区。
	// 一个关键问题：在这里，N是多少？更准确的问法：N和num的关系是怎样的？
	// num是inode-map的bit序号（初始值是0），N是inode-array的索引号（初始值也是0）。
	// inode-map的第0个bit（初始值是0）是保留位，第1个bit记录inode-array中第0个（初始值是0）
	// 元素的使用情况（有没有被使用）。所以，N = num - 1。
	RD_SECT(dev, blk_nr);

	// 作用是什么？
	// 这种给struct赋值的方式，没有问题。之前已经知道了，struct就是一段内存中的数据。
	// 我不理解的是，fsbuf中偏移几个inode后就是新inode的数据。
	// 1. 在fsbuf中，inode是连续的吗？
	// 2. 在fsbuf中，只有inode吗？
	// 3. fsbuf和inode_table有没有关系？
	//
	//
	// 一个 struct inode 占用 32 个字节。
	// 对指针的使用，难理解。
	// (u16 *)fsbuf + 2，2 的单位是多少？
	// (u8 *)fsbuf + 2，2 的单位是字节。
	// num 是 inode-array 的索引。inode-array 的第一个元素是 root-inode。
	// inode-map的第0个bit是保留位，这与 inode-array 不一致。
	// sector-map和分区的所有扇区是一一对应的。
	//
	// 非常非常非常重要！
	// RW_SECT读取512个字节到fsbuf中。fsbuf指向这512个字节的内存的初始位置。
	// 目标inode就存储在这512个字节的内存中。
	// 说得更具体些，从这512个字节的初始位置开始，选择sizeof(struct inode)个字节，就是
	// 目标inode所需要的内存空间。
	//
	// LBA寻址方式，LBA的初始值是0，不是1。
	// 我曾经认为，sector-map记录本区的所有扇区的使用情况。这是不正确的。
	// sector-map只记录本分区中的数据区域中的所有扇区的使用情况。
	struct inode * pinode =
		(struct inode*)((u8*)fsbuf +
				((num - 1 ) % (SECTOR_SIZE / INODE_SIZE))
				 * INODE_SIZE);
	// 仅仅是初始化吗？
	q->i_mode = pinode->i_mode;
	q->i_size = pinode->i_size;
	q->i_start_sect = pinode->i_start_sect;
	q->i_nr_sects = pinode->i_nr_sects;
	return q;
}

/*****************************************************************************
 *                                put_inode
 *****************************************************************************/
/**
 * Decrease the reference nr of a slot in inode_table[]. When the nr reaches
 * zero, it means the inode is not used any more and can be overwritten by
 * a new inode.
 * 
 * @param pinode I-node ptr.
 *****************************************************************************/
PUBLIC void put_inode(struct inode * pinode)
{
	assert(pinode->i_cnt > 0);
	pinode->i_cnt--;
}

/*****************************************************************************
 *                                sync_inode
 *****************************************************************************/
/**
 * <Ring 1> Write the inode back to the disk. Commonly invoked as soon as the
 *          inode is changed.
 * 
 * @param p I-node ptr.
 *****************************************************************************/
PUBLIC void sync_inode(struct inode * p)
{
	struct inode * pinode;
	struct super_block * sb = get_super_block(p->i_dev);
	// p->i_num 是什么？是inode-map中的bit的序号。
	// inode-array 的索引M和inode-map中的bit的序号N的关系是：M = N - 1。
	// 当N=0时，表示inode-map中的0号bit，是保留位，不对应inode-array中的任何元素。
	// 当N=1时，表示inode-map中的1号bit，对应inode-array中的inode-array[0]。
	// 所以，blk_nr的计算方法中是p->i_num - 1而不是p->i_num。
	// RD_SECT要读取的是本分区的第(blk_nr+1)个扇区（初始序号是1）。
	// 由于LBA的值的初始值是0，所以读取第(blk_nr+1)个扇区，只需要传递参数blk_nr。
	// blk_nr在hd_rdwt中会换算成LBA地址。
	int blk_nr = 1 + 1 + sb->nr_imap_sects + sb->nr_smap_sects +
		((p->i_num - 1) / (SECTOR_SIZE / INODE_SIZE));
	RD_SECT(p->i_dev, blk_nr);
	// 同步inode，做了两件事：
	// 1. 写入硬盘
	// 2. 写入内存
	// 为什么不是 (p->i_num - 1) * INODE_SIZE ？
	pinode = (struct inode*)((u8*)fsbuf +
				 (((p->i_num - 1) % (SECTOR_SIZE / INODE_SIZE))
				  * INODE_SIZE));
	pinode->i_mode = p->i_mode;
	pinode->i_size = p->i_size;
	pinode->i_start_sect = p->i_start_sect;
	pinode->i_nr_sects = p->i_nr_sects;
	WR_SECT(p->i_dev, blk_nr);
}

