
race conditions, two different processes or threads modifying the same data at the same time


examples

dining philosophers problem
deadlock or starvation, multiple critical variables, and each thread is only holding part

banking
deposits are simple
check/withdrawls are simple
transfers not simple
	need to sync from and to accounts
	rendezvous technique, or barrier technique
	ren is for 2 threads, can change atren to an int to make it work for multiple
		in pthreads (a6 matsquare)
```
bool atren = false
...
mutex lock
if !atren, atren = true, wait
else atren = false, signal
citical region
mutex unlock
```

barrier (sync for ALL threads)
	pthread_barrier_init
		count is how many have to hit the barrier before it breaks
	pthread_barrier_destroy
	pthread_barrier_wait
		returns 0 on success for all but one, which gets PTHREAD_BARRIER_SERIAL_THREAD

or using int
```
global w=total thread count
global n=0

mutex lock
n++
if (n < w) cv.wait
else cv.boradcast; n=0
citical region
unlock
```