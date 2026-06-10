
```
#include <signal.h>

int sigaction(int signo, const struct sigaction *restrict act,
              struct sigaction *restrict oact);

// Returns: 0 if OK, –1 on error
```
The argument signo is the signal number whose action we are examining or modifying. If the act pointer is non-null, we are modifying the action. If the oact pointer is non-null, the system returns the previous action for the signal through the oact pointer. This function uses the following structure:
```
struct sigaction {
  void     (*sa_handler)(int);  /* addr of signal handler, */
                                /* or SIG_IGN, or SIG_DFL */
  sigset_t sa_mask;             /* additional signals to block */
  int      sa_flags;            /* signal options, Figure 10.16 */
  /* alternate handler */
  void     (*sa_sigaction)(int, siginfo_t *, void *);
};
```



![[10fig16.jpg]]

