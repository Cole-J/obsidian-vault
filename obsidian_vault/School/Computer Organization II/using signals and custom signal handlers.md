
void (\*signal(int sig, void (\*func)(int));)(int)

func -> function name OR SIG_DEL (default) OR SIG_IGN (ignore)
sig -> signal name
return -> previous function pointer (or SIG_DFL or SIG_IGN)

the signal handler functions CAN ONLY talk to global variables
they cannot take a normal input or pass out a normal output

```
// look at sig.c

#include <stdio.h>
#include <signals.h>

// signal handler function
void func() {

}

int main(void) {
	// create / registers signal handler
	signal (SIGINT, func);

}

```


use of system calls in a handler
	void handler(int signumber)
	-
	generally do not call system calls in the handler
	things like exit are safe
	if the signal was caused by a system call things like errno are reset by the handler
		you can remember errno in the handler and reset it after the sys call to fix that issue
	system calls can run into issues when they run async
	-
	at least
		save errno
		do not use routines like malloc
		printf can overlap another output stream