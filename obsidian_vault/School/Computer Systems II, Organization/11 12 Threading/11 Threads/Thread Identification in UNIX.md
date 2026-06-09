
Like each processes unique id (the process id or pid), threads have a unique id represented by the pthread_t data type. The following functions work with thread ids.

```
#include <pthread.h>

int pthread_equal(pthread_t tid1, pthread_t tid2);
// Returns: nonzero if threads are equal, 0 otherwise

pthread_t pthread_self(void);
// returns the threads thread id
```