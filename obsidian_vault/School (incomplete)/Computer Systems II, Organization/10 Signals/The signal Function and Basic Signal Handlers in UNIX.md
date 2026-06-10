
The simplest way to interface with the signal features is the signal function, which calls a functions when a signal is caught.

```
#include <signal.h>

void (*signal(int signo, void (*func)(int)))(int);

// Returns: previous disposition of signal (see following) if OK, SIG_ERR on error
```
