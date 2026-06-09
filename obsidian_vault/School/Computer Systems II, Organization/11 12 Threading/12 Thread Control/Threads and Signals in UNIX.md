
Each thread has its own signal mask
pthread_sigmask()

sigaction is still for the entire process
signals are delivered to individual threads
	hardware issues signal, delivered to offending thread
	signal not caused by a specific thread, delivered to an arbitrary thread
		can control delivery with sig mask and sig wait, can have one thread catch all generic signals
		