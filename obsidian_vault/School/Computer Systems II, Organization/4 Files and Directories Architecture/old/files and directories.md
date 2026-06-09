
information about files and directories
management of files and directories

not about how to use the file but how to manage it

file system
	UNIX file system
		UFS
		FFS
	Other stuff
		FAT or DOS
		NTFS
		NFS
	-
	file system manages the data on the disk in some way.

File types
	most non unix stuff is mapped to regular or directory files
	-
	regular file, what your normally using, some thing storing data
		able to wr directly
	directory file, managed by the file system
		to wr you have to work through the OS
	Character special file
		a terminal, wr char at a time
	Block special file
	Symbolic link
		shortcuts
	FIFO
	Socket (Network)
		file that is connected to the network

Disk layout (physical)
	disk is partitioned into blocks. Block size is a single r/w to disk (hardware specific as its the hardware having to physically w/r).
	disk is then an array of the blocks.
	disk is partitioned into more sections of blocks.
	ex:
		disk: |file system 1| file system 2| file system 3| etc
		disk collection of blocks: | windows | netbsd | fs | etc
	-
	Single file system
		| Boot | super | inodes | data blocks |
			boot - bootstrap program
			super - contains information about partition
			inodes - information node, one per real file (some number and the real name of the file)
				vnode is in memory inode is on disk, changes are pushed to the vnode before the vnode pushes to the inode
			data blocks - both files and directories, 
			file system blocks: usually a power of 2, 1k to 8k
			each section: integral number of file system blocks

Directories:
	| Name, inode # | Name, inode # | ... |
		can see inode num with ls -i or ls -id
		inode 0 is to show there was an error
		inode \#s are like a contact list for phone numbers
		an inode is directly related to 1 file
		inode keeps track of its links to directories
		deleted when all links are gone
		what is in the inode, struct written to disk
			owner, group, permission
			file type
			number of links
			size (in bytes), and number of blocks
			time (accessed modified or status changed)
			access to data blocks (going down and abstracted as data is larger)
				n data block pointers (disk address)
					inode->data block, (10 data blocks)
				1 indirect block
					inode->pointer block->data block, (k data blocks)
				1 - 2 level indirect block
					inode->indirect block->indirect block-> data block, (k^2 data blocks)
				1 - 3 level indirect block
					inode->ptr block->ptr block-> ptr block->data block, (k^3 data blocks)
				-
				fills up the direct first, creates indirect with the indirect's first pointer being to the direct, then fill up the indirect. Once the indirect is full create another indirect with that ones first entry pointing to the first indirect. etc (this is wrong look below)
				--
				inode has DB, 1IDB, 2IDB, 3IDB. fills up DB, then 1IDB, then 2DB, then 3IDB
				-
				since its a tree like structure, you do not have to do a linear search, so unix has faster random access
				-
				NetBSD:32 bit block address, 8k blocks, 2048 pointers / blocks, 12 direct (2048=k)
				12\*8k=96k ish, most files in unix are under that so only the direct is needed (16gigs in first direct block)
				total number = 12+2048+2048^2+2048^3=8,594,103,956 blocks, each block being 8k bits, or 70 trillion bytes per file with 3 levels 

system calls that work with the file system
	stat(2) fstat(2) lstat(2) stat(1) stat.c
	-
	int stat(char \*path, struct \*sb)
	int lstat(char \*path, struct \*sb)
	int fstat(int fd, struct \*sb)
	-
	sb struct is returned with the info
	used to get much of the above info in a user process
	man 3type stat for specifics on sb

Macros for file types
	S_ISREG(st_mode)
	S_ISDIR(st_mode) is directory true or false?

other system calls
	int access(char \*path, mode)
		R_OK, W_OK, X_OK, F_OK
		gets permissions for the file, can you read it, write to it, execute, does it exist

change modes
	int chmod(\*path, mode)
	int lchmod(\*path, mode)
	int fchmod(fd, mode)
	chmod(1) changes setuid, setgid, stickybits
	-
	to find mode, use stat, to change use chmod

change owner
	int chown, change owner or group,
	int lchown
	int fchown
	-
	chown(1)
	-
	only superuser can change groups, (the one who created it)
		can give another permission to copy it

truncate a file, remove a portion of the file
	int truncate
	int ftruncate, removes whats in the current file

add a link to a file
	int link(\*oldname, \*newname), 
		only works on files
		must be on the same filesystem
		need write permissions in last directory in newname
		adds a directory entry
		does not double file storage needs
		ln(1), link(1)

unlink a file name
	int unlink(\*path)
	must have write and execute access to directory
	sticky bit or directory:
		off, do not have to own the file for it to stick in the directory
		on, you do have to own the file for it to stick in the directory
	deletes an entry in the directory
	file is deleted when
		link count is zero
		file is not open
	remove(3) alias for unlink
	rm(1) command line access

rename a file
	int rename(oldname, newname)
	oldname and newname must be on the same file system
	can also use it to move the file around in a directory
	permissions
		if its a file
			newname cannot be an existing directory
			if newname exists and is a file, it is unlinked
			must have write perms to both dirs
		if its a directory
			if newname exists and is empty it is unlinked
			if newname exists and is not empty, error
			newname cannot be a subdirectory of oldname
	mv(1) is the command line access
		will copy files from one file system to another

symbolic links
	int symlink(name1, name2)
	not a hard link
	name2 is the new entry
	name1 is stored for later use
	name1 does not even have to exist
	-
	ln -s name1 name2
	look at it with ls -li name2 name1 or just ls -li
	-
	similar to shortcuts but not really
	they will have different inode numbers
	can cross file systems
	the name2 is called and points to name1
	-
	unlinked removes only the stored name

other symbolic link functions
	use stat to know if its a symbolic link (lstat)
	to read link
		int readlink(path, buf, bufsize)
		readlink(1)
	time
		utimes
		lutimes
		futimes
		set access and modification times
		times
			null ptr, set to current time
			non null ptr, points to a 2 element array
				access time
				modification time

making directories
	mkdir(path, mode)
	must have write perms to create
	mkdir -p /full/new/path
	-p used to create a full directory
	makes whats not there

deleting directories
	rmdir(path)
	directory must be empty (only . and ..)
	must have write access to parent directory
	rm -r tries to remove everything

working directories
	chdir(path)
	fchdir(fd)
	-
	getcwd(3)

reading directories
	early version on unix you had to know format and code to use
	no its supplied by os
	-
	DIR \*opendir(\*filename)
	struct dirent \*readdir(DIR \*dirp)
	closedir(DIR \*dirp)
	-
	like how file open, read, close works
	-
	telldir()
	seekdir()
	rewinddir()
	dirfd()
	-
	works for any file system and do not need to know directory format
	-
	struct dirent
		d_fileno // file number of entry, aka d_ino or inode num
		d_reclen // length of this record
		d_namelen // length of stringin d_name
		d_name // max name length

other file system calls
	void sync(void)
		normally the os writes to a file in a buff
		this forces the os to write everything in all the os buffs to imediatly write
	void fsync(fd)
		same as sync but only for 1 fd

