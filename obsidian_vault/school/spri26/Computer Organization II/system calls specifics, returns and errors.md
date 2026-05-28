[[system calls vs library calls]]

A request to OS
typically a trap instruction
often an assembly wrapper

most languages have access to call system calls
	for this class we will use c like function calls

system call return values
	returns information about the system call
		ex: int read(int fd, void buf, size_t nbytes)
			will return an int which may have a value represening an error condition
	when you call a system call always check for an error

System call errors
	access to which error is in the errno variable
		add include <errno.h>
		/usr/include/errno.h
		strerror(3), if you give it the error number it gives you the error str desc
		perror(3) will print the errno string
			NEVER USE THIS FOR A USER INPUT PROBLEM, only use it for the system