
fork(2) create a new process
exit(3) exits a process

waiting
	wait(status), wait for a child of the process to die, returns the dead childs pid
	waidpid(pid, status, options), waits for a specific child to die via pid
		pid
			-1 waits or any child process
			0 waits for any child process in the process group of the caller
			>0 wait for the process with that pid
			<-1 waits for any process group id equal to abs of pid
	wait3(status, options, rusage)
	wait4(pid, status, options, rusage)
	-
	status
		int containing the return / exit value of the status
	options
		0, wait (like normal)
		WNOHANG, checks for any dead children
	rusage
		resource usage struct

zombie process
	process that has exited but its parent has not been waited on the child
	child has completed and exited before parent calls wait
	-
	when parent dies the children are inherited by parents parents
	child sent up, cleaned up by system (waited on by process 1)

exit status macros
	WIFEXITED(status)
		true if process called \_exit(2) or exit(3)
		WEXITSTATUS(status) (only makes sense if the above is true)
			gets lower 8 bits of argument passed to \_exit(2)
	WIFSIGALED(status)
		true if the process terminated due to receipt of a signal
		ex: sigfault sigint ctrl+c
		WTERMSIG(status)
			gets the number of the signal that caused the termination
		WCOREDUMP(status)
			true if a core file was created
	WIFSTOPPED(status)
		true if the process has not terminated, but has stopped and can be restarted
		WSTOPSIG(status)

