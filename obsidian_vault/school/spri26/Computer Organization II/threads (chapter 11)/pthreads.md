
posix pthreads

int pthread_euqals(t1, t2)
	compares two threads, zero = not equal, non zero = equal

pthread_t pthread_self()
	gets current thread id

int pthread_create(thread, attribute, threadmainfunc, arg)

pthread_exit(\*void ptr)
	a thread calling exit or \_exit terminates the whole process
	use pthread_exit to only kill the thread

pthread_join(thread, returnvalue)
	joins thread to your main process
	blocks until thread is finished, like wait for pids

pthread_cancel

pthread_cleanup_push

pthread_detatch
