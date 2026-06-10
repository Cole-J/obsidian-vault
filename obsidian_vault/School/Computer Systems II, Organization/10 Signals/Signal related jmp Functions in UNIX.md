
The these are variations of the [[jmp Functions (Labels) in UNIX]] specifically for working with Signals.

```
#include <setjmp.h>

int sigsetjmp(sigjmp_buf env, int savemask);

// Returns: 0 if called directly, nonzero if returning from a call to siglongjmp

void siglongjmp(sigjmp_buf env, int val);
```

The only variation is that if savemask is nonzero then sigsetjmp also saves the current signal mask of the process in env.

When siglongjmp is called, if the env argument was saved by a call to sigsetjmp with a nonzero savemask, then siglongjmp restores the saved signal mask.