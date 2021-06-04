/*************************************************************************//**
 *****************************************************************************
 * @file   misc.c
 * @brief  
 * @author Forrest Y. Yu
 * @date   2008
 *****************************************************************************
 *****************************************************************************/

/* Orange'S FS */

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
#include "hd.h"
#include "fs.h"

/*****************************************************************************
 *                                search_file
 *****************************************************************************/
/**
 * Search the file and return the inode_nr.
 *
 * @param[in] path The full path of the file to search.
 * @return         Ptr to the i-node of the file if successful, otherwise zero.
 * 
 * @see open()
 * @see do_open()
 *****************************************************************************/
// 遍历根目录，根据文件名找到目标根目录。从目标根目录中获取目标文件的inode在inode-array中的索引.
PUBLIC int search_file(char * path)
{
	int i, j;

	char filename[MAX_PATH];
	memset(filename, 0, MAX_FILENAME_LEN);
	struct inode * dir_inode;
	if (strip_path(filename, path, &dir_inode) != 0)
		return 0;

	if (filename[0] == 0)	/* path: "/" */
		return dir_inode->i_num;

	/**
	 * Search the dir for the file.
	 */
	int dir_blk0_nr = dir_inode->i_start_sect;
	int nr_dir_blks = (dir_inode->i_size + SECTOR_SIZE - 1) / SECTOR_SIZE;
	int nr_dir_entries =
	  dir_inode->i_size / DIR_ENTRY_SIZE; /**
					       * including unused slots
					       * (the file has been deleted
					       * but the slot is still there)
					       */
	int m = 0;
	struct dir_entry * pde;
	for (i = 0; i < nr_dir_blks; i++) {
		RD_SECT(dir_inode->i_dev, dir_blk0_nr + i);
		pde = (struct dir_entry *)fsbuf;
		for (j = 0; j < SECTOR_SIZE / DIR_ENTRY_SIZE; j++,pde++) {
			if (memcmp(filename, pde->name, MAX_FILENAME_LEN) == 0)
				return pde->inode_nr;
			if (++m > nr_dir_entries)
				break;
		}
		if (m > nr_dir_entries) /* all entries have been iterated */
			break;
	}

	/* file not found */
	return 0;
}

/*****************************************************************************
 *                                strip_path
 *****************************************************************************/
/**
 * Get the basename from the fullpath.
 *
 * In Orange'S FS v1.0, all files are stored in the root directory.
 * There is no sub-folder thing.
 *
 * This routine should be called at the very beginning of file operations
 * such as open(), read() and write(). It accepts the full path and returns
 * two things: the basename and a ptr of the root dir's i-node.
 *
 * e.g. After stip_path(filename, "/blah", ppinode) finishes, we get:
 *      - filename: "blah"
 *      - *ppinode: root_inode
 *      - ret val:  0 (successful)
 *
 * Currently an acceptable pathname should begin with at most one `/'
 * preceding a filename.
 *
 * Filenames may contain any character except '/' and '\\0'.
 *
 * @param[out] filename The string for the result.
 * @param[in]  pathname The full pathname.
 * @param[out] ppinode  The ptr of the dir's inode will be stored here.
 * 
 * @return Zero if success, otherwise the pathname is not valid.
 *****************************************************************************/
PUBLIC int strip_path(char * filename, const char * pathname,
		      struct inode** ppinode)
{
	const char * s = pathname;
	char * t = filename;

	if (s == 0)
		return -1;

	// 本函数不能处理 ./link.c 这种格式，只能处理 /link.c 这种格式。
	if (*s == '/')
		s++;

	while (*s) {		/* check each character */
		if (*s == '/')
			return -1;
		*t++ = *s++;
		/* if filename is too long, just truncate it */
		if (t - filename >= MAX_FILENAME_LEN)
			break;
	}
	*t = 0;

	// root_inode 是全局变量，指向根目录的inode。
	// root_inode 是指针，指针的值是一个内存地址。
	// 能被赋值为内存地址的变量，必须是指针。
	// 这句等价于 ppinode = &root_inode。
	// 为什么两个语句等价？我以前理解其中缘由，此刻，我又不理解。
	// 试着理解一下。
	// 1. root_inode 是什么？是一个指针变量，值是一个内存地址。
	// 2. ppinode 是什么？是一个指向指针的指针变量。
	// 3. ppinode的数据类型是 struct inode ** ppinode。
	// 4. 假设pinodde是一个指针变量，ppinode指向pinode。
	// 5. 于是，有 *ppinode = pinode。
	// 用这种方式，仍然不好理解，画示意图吧

	/***********************************************************
 	 * address  |	0x00	|	0x01	|	0x02	|	0x03	|	0x04	|
 	 * var	    |	-	|	ppinode	|	pinode	|	-	|	data	|
 	 * data	    |	-	|	dppinode|	dpinode	|	-	|	ddata	|
	 ***********************************************************
 	 * 1. ppinode、pinode、pinode指向的数据，三者在内存中的分布如上图所示。
 	 * 2. data是pinode指向的数据。
 	 * 3. ppinode指向0x02。
 	 * 4. pinode指向0x04。 
 	 * 5. pinode的值是什么？dpinode。
 	 * 6. *pinode的值是什么？ddata。
	 * 7. ppinode的值是什么？dppinode。
 	 * 8. *ppinode的值是什么？dpinode。
 	 * 9. **ppinode的值是什么？是 *dpinode 的值。dpinode等价于pinode。*pinode的值是data。
 	 * 10. &pinode的值是什么？0x02，即存储pinode的内存空间的内存地址。
 	 * 10.1 每个内存地址，又可以存储在另外一个内存空间中。存储0x02这个内存地址的内存空间
 	 * 是内存地址为0x01的内存空间，即变量ppinode对应的内存空间。
 	 * 11. 变量名，本质是这个变量名对应的内存中的数据。
	 **********************************************************/
	// 在init_fs中，root_inode = get_inode(ROOT_DEV, ROOT_INODE);
	// root_inode 是一个全局变量。
	// ./include/sys/global.h:51:EXTERN	struct inode *		root_inode;
	// 在上面的位置声明的全局变量。
	*ppinode = root_inode;

	return 0;
}

