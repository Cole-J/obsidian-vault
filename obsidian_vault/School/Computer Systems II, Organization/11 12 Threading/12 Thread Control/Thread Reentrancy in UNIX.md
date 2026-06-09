
Thread can call the same function at the same time. If the function is not structured to be reentrancy safe there can be errors.

The following functions are NOT guaranteed to be thread safe by POSIX standards.
![[Pasted image 20260609110716.png]]

Alternative thread safe options.
![[Pasted image 20260609110814.png]]

What can make a function unsafe when working with multiple threads:
- Returns a pointer to a single static struct, with a second call changing the static struct.

functions to lock or unlock files
```
#include <stdio.h>

int ftrylockfile(FILE *fp);

Returns: 0 if OK, nonzero if lock can’t be acquired

void flockfile(FILE *fp);

void funlockfile(FILE *fp);
```

```
#include <stdio.h>

int getchar_unlocked(void);

int getc_unlocked(FILE *fp);

Both return: the next character if OK, EOF on end of file or error

int putchar_unlocked(int c);

int putc_unlocked(int c, FILE *fp);
```