
system call
	programmed request to the OS
	API looks like C or something similar
		ex:
			write(fd, mystring, nbytes)
			fork()
			windows specific ex: NtCreateFile(...), NtReadFile(...)
	asking the system to do a job

Library call
	a utility function / no OS computation (might call to OS but runs outside it)
		ex:
			atoi(char*), you could write it yourself, but its given
			qsort(...)
			sqrt(value) (libm, -lm to link to math library as sqrt is not in standard c library)
				gcc -g -o programName programName.c -lm
	some library functions do call to the OS
		ex:
			printf(...), writes to standard out
			newwin(...), (libcurses, -lcurses to link) creates a window from the terminal


User ->Library Code and Kernel / OS (supervisor mode)
shell -> Library and OS
Library -> Kernel / OS