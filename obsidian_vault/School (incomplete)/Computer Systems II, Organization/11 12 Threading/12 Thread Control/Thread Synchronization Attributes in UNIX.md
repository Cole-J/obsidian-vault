
```
#include <pthread.h>

int pthread_mutexattr_init(pthread_mutexattr_t *attr);

int pthread_mutexattr_destroy(pthread_mutexattr_t *attr);
```

```
#include <pthread.h>

int pthread_mutexattr_getpshared(const pthread_mutexattr_t *
                                 restrict attr,
                                 int *restrict pshared);

int pthread_mutexattr_setpshared(pthread_mutexattr_t *attr,
                                 int pshared);
```

```
#include <pthread.h>

int pthread_mutexattr_getrobust(const pthread_mutexattr_t *
                                 restrict attr,
                                 int *restrict robust);

int pthread_mutexattr_setrobust(pthread_mutexattr_t *attr,
                                 int robust);
```

```
#include <pthread.h>

int pthread_mutex_consistent(pthread_mutex_t * mutex);
```

```
#include <pthread.h>

int pthread_mutexattr_gettype(const pthread_mutexattr_t *
                              restrict attr, int *restrict type);

int pthread_mutexattr_settype(pthread_mutexattr_t *attr, int type);
```

read write lock attributes
```
#include <pthread.h>

int pthread_rwlockattr_init(pthread_rwlockattr_t *attr);

int pthread_rwlockattr_destroy(pthread_rwlockattr_t *attr);
```

```
#include <pthread.h>

int pthread_rwlockattr_getpshared(const pthread_rwlockattr_t *
                                  restrict attr,
                                  int *restrict pshared);

int pthread_rwlockattr_setpshared(pthread_rwlockattr_t *attr,
                                  int pshared);
```

condition attributes
```
#include <pthread.h>

int pthread_condattr_init(pthread_condattr_t *attr);

int pthread_condattr_destroy(pthread_condattr_t *attr);
```

```
#include <pthread.h>

int pthread_condattr_getpshared(const pthread_condattr_t *
                                restrict attr,
                                int *restrict pshared);

int pthread_condattr_setpshared(pthread_condattr_t *attr,
                                int pshared);
```

```
#include <pthread.h>

int pthread_condattr_getclock(const pthread_condattr_t *
                                restrict attr,
                                clockid_t *restrict clock_id);

int pthread_condattr_setclock(pthread_condattr_t *attr,
                                clockid_t clock_id);
```

barrier attributes
```
#include <pthread.h>

int pthread_barrierattr_init(pthread_barrierattr_t *attr);

int pthread_barrierattr_destroy(pthread_barrierattr_t *attr);
```

```
#include <pthread.h>

int pthread_barrierattr_getpshared(const pthread_barrierattr_t *
                                restrict attr,
                                int *restrict pshared);

int pthread_barrierattr_setpshared(pthread_barrierattr_t *attr,
                                int pshared);
```