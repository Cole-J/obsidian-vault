
Every signal has a unique name, with the first 3 characters being SIG, and correspond to an integer value with no signal having the number 0.. Import <signal.h> to use or modify signal behaviors in a C file.

Examples of some signals.
```
SIGINT // interrupt program 
SIGSEGV // segmentation violation 
SIGTSTP // stop signal from terminal 
SIGCHLD // child status has changed

// man 7 signal for more information
```

Examples of signal causes:
- SIGINT, signaled by terminal \^C input.
- SIGTSTP, signaled by terminal \^Z input.
- SIGFPE, divide by zero.
- SIGSEGV, bad pointer, segmentation violation.
- SIGBUS, unaligned access.

A mostly complete list of signals in UNIX systems.
![[10fig01.jpg]]
![[10fig01a.jpg]]

