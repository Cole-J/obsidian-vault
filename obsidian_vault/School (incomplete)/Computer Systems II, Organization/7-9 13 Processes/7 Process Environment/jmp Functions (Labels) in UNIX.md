
The jmp (jump) functions in C allow us to implement goto and labels. Labels and gotos allow us to jump out of deeply nested code. This is commonly done for handling nonfatal errors where we want to jump out of the current logic and back to main, without having to bother with complex logic to cleanly exit from each function in the stack frame.

To do that, we use two functions.
```
#include <setjmp.h>

int setjmp(jmp_buf env);

// Returns: 0 if called directly, nonzero if returning from a call to longjmp

void longjmp(jmp_buf env, int val);
```

setjmp is called in the location you may want to return to, which in the above nonfatal error example would be the main function. When it is called directly (say in main for our example) it returns 0 and we would continue with mains logic.

The argument env is some form of array that holds all information required for longjmp to restore the status of the stack back to when we called setjmp. Normally meaning env is a global variable.

longjmp is then called when we want to initiate the jump back to setjmp. In the error handling example it would be when we encounter a nonfatal error within deeply nested code. Its first argument is env, which should be the same global that was passed to setjmp. val is (or at least should be) a nonzero value that becomes the return value of setjmp when we make the jump. Once longjmp is called, the process keeps running at setjmp instead where its nonzero value can be detected.