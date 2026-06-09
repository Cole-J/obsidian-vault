
Normal methods of process termination in UNIX (1-5, with abnormal methods 6-8):
1. Return from main.
2. Calling exit(3).
3. Calling \_exit(2) or \_Exit(2).
4. Return of the last thread from its start routine.
5. Calling pthread_exit(3).
6.  Calling abort(3).
7. Receiving a signal.
8. Response of the last thread to a cancellation request.

There are three main exit functions. exit(3) preforms cleanup before returning to the kernel while \_exit(2) and \_Exit(2) return immediately. Calling return (int) in the main function is functionally equivalent to calling exit(3) with the same value.
```
#include <stdlib.h>

void exit(int status);

void _Exit(int status);

#include <unistd.h>

void _exit(int status);
```
You can see the exit status of the last terminated process using the script macro '$?'.

The function atexit(3) registers exit handler functions, which are called during the exit process. They are called in reverse order of their registration.
```
#include <stdlib.h>

int atexit(void (*func)(void));
```
