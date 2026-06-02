

single process, multiple threads (stack and execution)
can simplify code for async code
threads can share global or heap memory, but typically not stack memory

threads consist of
	stack
	CPU registers
		errno (local to thread)