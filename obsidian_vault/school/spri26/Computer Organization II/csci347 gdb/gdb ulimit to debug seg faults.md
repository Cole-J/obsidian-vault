
./a.out gives seg fault

get core data
	ulimit -a
	or
	ulimit -c
	-
	ulimit -c unlimited
	run ./a.out again to get (core dumped) and core file
	-
	now analyze core file with gdb
		gdb a.out core