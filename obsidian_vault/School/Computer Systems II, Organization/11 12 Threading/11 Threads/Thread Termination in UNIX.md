
If any thread within a process calls any of the [[Process Termination in UNIX|exit functions]], then the entire process terminates (including the creator thread and all of its created threads). A [[-Signals start tab|signal with the termination action]] sent do any thread will also terminate the entire process.

A thread can exit in 3 ways without terminating the entire process.
1. The thread can simply return from the start routine. The return value is the thread’s exit code.
2. The thread can be canceled by another thread in the same process.
3. The thread can call the thread specific exit function pthread_exit.
```
#include <pthread.h>

void pthread_exit(void *rval_ptr);
```


```
#include <pthread.h>

int pthread_join(pthread_t thread, void **rval_ptr);
```
similar to the waidpid function

```
#include <pthread.h>

int pthread_detach(pthread_t tid);
```


You will notice that the thread functions are similar to process forking functions.
![[Pasted image 20260609094931.png]]