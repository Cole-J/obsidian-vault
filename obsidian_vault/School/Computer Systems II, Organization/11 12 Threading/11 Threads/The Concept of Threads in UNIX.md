
A typical UNIX process can be thought of as having a single thread of control with each process doing only one thing at a time. However we can implement multiple threads of control, and design our programs to do more than one thing at a time within a single process.

Compared to forking processes or using a single process, implementing threads has several benefits.
- We can simplify code that deals with asynchronous events by assigning a separate thread for each event.
- Multiple processes have to use complex mechanisms provided by the operating system to share memory and file descriptors. Threads, in contrast, automatically have access to the same memory address space and file descriptors.
- Some problems can be partitioned so that overall program throughput can be improved.
- Similarly, interactive programs can realize improved response time by using multiple threads to separate the portions of the program that deal with user input and output from the other parts of the program.

A thread consists of:
- A stack (local variables in functions and the sequence of all called functions).
- CPU registers (PC, status, etc).
- Thread Local Storage. Variables that are global for the thread, but only for that thread.
	- errno
- Global variables shared by the rest of the process (pid, CWD, files, heap, etc).