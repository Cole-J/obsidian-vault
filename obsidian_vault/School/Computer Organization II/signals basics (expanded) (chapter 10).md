
[[signals]]

software interruptions

signals are asynchronous events

history
	version 7 did not have reliable signals, they could get lost
	BSD changed signals to be more reliable
	POSIX had their own version

Signal Names
	SIGINT - interrupt program
	SIGSEGV - segmentation violation
	SIGTSTP - stop signal from terminal
	SIGCHLD - child status has changed
	man 7 signa
		on NETBSD they all have the same number
		on Linux they had different numbers depending on architecture

Signal causes
	terminal generated
		\^C
		\^Z
		\^\
	hardware generated
		divide by 0
		bad pointer reference
		unaligned access
	more signal causes
		kill system call (pronounced send signal)
			int kill(pid, signal) // sends signal to pid
				if pid > 0, go to that process
				if pid = 0, go to the process group of the sender
				if pid = -1, all processes except sender
					if its root, all but system processes
					if not root, all with same uid
				root can signal any process
				not root can only signal process with same uid
		kill user level command
			kill command built into shells
			same as kill system call
	other signals
		SIGURG
		SIGPIPE
		SIGALRM
		SIGCHLD

what happens at "signal time"
	signal is delivered to a process by the OS
	delivery can be
		ignore the signal - nothing happens
			cannot ignore SIGKILL and SIGSTOP
		catch the signal
			program does some function when a signal is caught.
			called the signal handler, runs async
			if sig handler function returns immediatly, same as ignore
				cannot catch SIGKILL and SIGSTOP
		default action
			can be ignore signal
				SIGCHLD
			can terminate the process
				SIGSEGV
			can dump core and terminate process
				SIGSEGV normally
			man 7 signal

[[using signals and custom signal handlers]]

other issues
	system calls may be interrupted by signals
		EINTR is an error code for an interrupted system call
			can create a do while loop to run system calls until its not interrupted

other related calls
	raise(3), give signal to current process, same as kill(getpid(), signal)
	alarm(3) / setitimer(2)
	pause(3) / sigsuspend(2)
	abort(3), gives the abort signal to the current process

[[advanced signal interface]]
