
The pthread attribute interface allows us to fine tune the behavior of threads and synchronization objects by setting various attributes associated with each object.

- Each object is associated with its own type of attribute object (threads with thread attributes, mutexes with mutex attributes, and so on). An attribute object can represent multiple attributes. The attribute object is opaque to applications. This means that applications aren’t supposed to know anything about its internal structure, which promotes application portability. Instead, functions are provided to manage the attributes objects.

- An initialization function exists to set the attributes to their default values.

- Another function exists to destroy the attributes object. If the initialization function allocated any resources associated with the attributes object, the destroy function frees those resources.

- Each attribute has a function to get the value of the attribute from the attribute object. Because the function returns 0 on success or an error number on failure, the value is returned to the caller by storing it in the memory location specified by one of the arguments.

- Each attribute has a function to set the value of the attribute. In this case, the value is passed as an argument, by value.

```
#include <pthread.h>

int pthread_attr_init(pthread_attr_t *attr);

int pthread_attr_destroy(pthread_attr_t *attr);
```

detatch
```
#include <pthread.h>

int pthread_attr_getdetachstate(const pthread_attr_t *restrict attr,
                                int *detachstate);

int pthread_attr_setdetachstate(pthread_attr_t *attr, int detachstate);
```

stack
```
#include <pthread.h>

int pthread_attr_getstack(const pthread_attr_t *restrict attr,
                          void **restrict stackaddr,
                          size_t *restrict stacksize);

int pthread_attr_setstack(pthread_attr_t *attr,
                          void *stackaddr, size_t stacksize);

int pthread_attr_getstacksize(const pthread_attr_t *restrict attr,
                              size_t *restrict stacksize);

int pthread_attr_setstacksize(pthread_attr_t *attr, size_t stacksize);
```

thread guard (empty space between each in memory)
```
#include <pthread.h>

int pthread_attr_getguardsize(const pthread_attr_t *restrict attr,
                              size_t *restrict guardsize);

int pthread_attr_setguardsize(pthread_attr_t *attr, size_t guardsize);
```

from slides
```
pthread_attr_getdetachstate(3) thread detach state 
pthread_attr_getguardsize(3) thread guard size 
pthread_attr_getinheritsched(3) inherit scheduler attribute pthread_attr_getschedparam(3) thread scheduling parameter pthread_attr_getschedpolicy(3) thread scheduling policy 
pthread_attr_getscope(3) thread contention scope 
pthread_attr_getstack(3) thread stack 
pthread_attr_getstacksize(3) thread stack size 
pthread_attr_getstackaddr(3) thread stack address
```