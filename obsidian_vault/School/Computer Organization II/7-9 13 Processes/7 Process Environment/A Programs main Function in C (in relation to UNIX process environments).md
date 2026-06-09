
A C program starts execution at the main function. The prototype for a main function in C is:
```
int main(int argc, char *argv[]);
```
- argc: number of command-line arguments.
- argv: an array of pointers to the arguments.

When a C program is executed by the kernel (via one of the exec functions), the command line arguments and the environment are setup, with the command line arguments passed to the created program through argc / argv parameters.