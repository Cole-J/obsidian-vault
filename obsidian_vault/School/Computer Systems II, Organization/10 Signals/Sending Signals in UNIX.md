
The kill function is used to send a signal to a process or a group of processes. The raise function allows a process to send a signal to itself.
```
#include <signal.h>

int kill(pid_t pid, int signo); // kill(2)

int raise(int signo); // raise(3)

// Both return: 0 if OK, –1 on error
```

There are 4 conditions for the parameter pid in the kill function.
1. pid > 0: The signal is sent to the process whose process ID is pid
2. pid == 0: The signal is sent to all processes whose process group ID equals the process group ID of the sender and for which the sender has permission to send the signal.
3. pid < 0: The signal is sent to all processes whose process group ID equals the absolute value of pid and for which the sender has permission to send the signal.
4. pid == 1: The signal is sent to all processes on the system for which the sender has permission to send the signal.

There is also a kill(1) terminal command with the same functionality

There is also an alarm function which sends the SIGALRM to the process one the alarm goes off. If there is no signal handler setup before the SIGALRM is sent the process will terminate as SIGALRMs default action is to stop the processes.
```
#include <unistd.h>

unsigned int alarm(unsigned int seconds);

// Returns: 0 or number of seconds until previously set alarm
```

The pause function suspends the calling process until a signal is caught.
```
#include <unistd.h>

int pause(void);

// Returns: –1 with errno set to EINTR
```