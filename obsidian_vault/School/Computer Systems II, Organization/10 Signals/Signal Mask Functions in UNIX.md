
Recall that the signal mask of a process is the set of signals currently blocked from delivery to that process. A process can examine its signal mask, change its signal mask, or perform both operations in one step by calling the sigprocmask function.
```
#include <signal.h>

int sigprocmask(int how, const sigset_t *restrict set,
                sigset_t *restrict oset);

// Returns: 0 if OK, –1 on error
```

![[10fig13.jpg]]

The sigpending function returns the set of signals that are blocked from delivery and currently pending for the calling process. The set of signals is returned through the set argument.
```
#include <signal.h>

int sigpending(sigset_t *set);

// Returns: 0 if OK, –1 on error
```

sigsuspend function