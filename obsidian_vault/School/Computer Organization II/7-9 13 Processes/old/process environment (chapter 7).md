
program execution
	int main(argc, char \*argv\[], char \*envp\[])
process termination
	exit(3) or \_exit(2)
		zero value, no error
		non zero value, some error or issue
	abort(3)
		send abort signal to current processes
	atexit(3)
		schedule a function to run at exit() call (not run at \_exit(2) call)

[[memory layout of a c program]]
[[memory allocation]]
