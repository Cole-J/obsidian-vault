
fork(2) will create a new process with only one thread running

if you
	fork() and exec(), no problem as the memory image is destroyed
	fork() and continue execution of logic,
		dont use locks / threads
		if you use locks and threads with forking, use pthread_atfork. otherwise problems