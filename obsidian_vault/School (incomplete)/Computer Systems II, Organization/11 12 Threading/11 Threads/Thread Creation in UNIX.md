
We can create a thread using the pthread_create function.
```
#include <pthread.h>

int pthread_create(pthread_t *restrict tidp,
                   const pthread_attr_t *restrict attr,
                   void *(*start_rtn)(void *), void *restrict arg);
```

Parameters of pthread_create:
- tidp: address pf a pthread_t, used to return the created threads id back to the creator.
- attr: thread attributes.
- start_rtn: function that will be initially run by the created thread.
- arg: a void pointer to a pointer to an argument for the start_rtn function.