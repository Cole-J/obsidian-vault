File I/O
open, read, write, close, lseek

man page open(2)
	include <fcntl.h>
	-
	int open(const char \*path, int flags, mode_t mode)
	-
	flags
		O_RDONLY, read only
		O_WRONLY, write only
		O_RDWR, read and write
		-
		O_APPEND, only append
		O_CREAT, can create file if it does not exist
		O_EXCL, requires the file to be created if passed with O_CREAT
		O_TRUNC, overwrite current content
		-
		numerous other flags (check manual)
	-
	mode (needed only with O_CREAT, 0 if not there)
		numbers representing permission on creation
		C -- 777 vs 0777 vs 0x777 (int vs octal number vs hex)
		-
		permissions (3 bits, 100, 010, or 001)
			read (r--, 4)
			write (-w-, 2)
			execute (--x, 1) (lookup a name in a directory)
		-
		who gets the permissions
			user (0700)
			group (0070)
			others (0007)

umask(2) remove mode bits during open, assumes your giving it an octal number
	umask 077 is only user can see files
	umask 002 makes it so others cannot write

fd = open("/file/name", O_RDWR | O_CREAT, 0700); only user has read write and execute in created file

its 7 because the 7 represents 3 1s, or 111, as its in octal. the perms are 000000000 with the first 3 being user, second 3 being group, third 3 being other

return value of fd
	fd >= 0 -- success
	fd < 0 -- open unsuccessful, error in errno

Read and Write
	ssize_t read(int fd, void \*buf, size_t nbytes)
	-
	ssize_t write(int fd, const void \*buf, size_t nbytes)
	-
	with read the OS is giving a read only to the buf, for write the function is getting the buf
	-
	fd is a value returned by open
	buf is usually an array of data (not null terminating)
	nbytes is size of buf (read) or size of data to write (write)
	-
	return value
		< 0 number of bytes read or written
		0 EOF
		> 0 error

file "pointer" is just an index for where to read or write

lseek
	off_t lseek(int fd, off_t offset, int whence)
	off_t is a number, maybe a long or int or quad
	file is like a bag of bytes from byte 0 to n-1 for n bytes
	lseek can modify the file "pointer"
	whence
		SEEK_SET offset bytes from start of file
			positive int
		SEEK_CUR offset bytes from current location (of the file "pointer")
			positive or negative int
		SEEK_END offset bytes from end of file
			should be negative int (but can pass positive, it will work but it does strange things)
	returns the new location of the file pointer or an error (check if fd < 0 for error)
	-
	not changing any data in the file, just prepares the file "pointer" for the next time read or write is used

du -sh .
	disk usage in current directory

close
	int close(int fd)
	removes the fd from the OS, tells the OS we are done with the file
	returns if the file was closed
	we generally dont care as either it closed (yay) or it didnt and there isnt anything we can do

I/O effeciency
	1 byte vs 8k bytes
	example program using system calls
		cat.c (add cat.c to the end of the class webpage)

[[File Sharing]]
[[files and directories]]






