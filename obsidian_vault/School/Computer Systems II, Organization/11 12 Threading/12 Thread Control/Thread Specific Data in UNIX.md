
Thread specific data is a mechanism for storing and finding data associated with a particular thread. Storing information by thread ID would be problematic, and not secure, so keys are used instead.

```
#include <pthread.h>

int pthread_key_create(pthread_key_t *keyp, void (*destructor)(void *));

int pthread_key_delete(pthread_key_t key);

int pthread_once(pthread_once_t *once_control, void (*init_routine)(void));
```

Memory to be passed out of the thread should be malloced so its not destroyed when the thread exits.

```
#include <pthread.h>

void *pthread_getspecific(pthread_key_t key); 

int pthread_setspecific(pthread_key_t key, const void *value);
```