
two types of locking
	read_lock, only reading
	write_lock, reading and writing

any number of read_lock unlocking, write_lock locks all

write_lock stops new read_lock from generating

pthreads have read and write lock