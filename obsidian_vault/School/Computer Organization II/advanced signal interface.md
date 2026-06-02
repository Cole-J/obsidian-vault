
create a signal struct
	struct sigaction
		function handler
		mask
		flags

int sigaction(int sig, sigaction newaction, sigaction oldaction)

mask is a set of signals to block during the handler running
	routines to make mask
		sigemptyset
		sigfillset
		sigaddset
		sigdelset
		sigismember

flags to control other things
	SA_RESTART restarts system calls that can be restarted
	others

