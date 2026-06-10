
ps aux | grep xfce | grep -v grep | cut -c1-5

stdin -> ps aux -> stdout/pipe/stdin -> grep dh -> ...

processline()
	building the pipe, but never reading or writing to the pipe
	expand, then find pipelines
	search for pipe
		man strchr
	"ps aux" command
		use processline, no expand no wait
	loop over all pipeline elements
		never need to have more than 2 pipes open at the same time
		ush needs to close both ends of every pipe opened
		ush parent / child does not read or write to any pipes or files
		processline(line, infd, outfd, flags)
			flags NOWAIT, NOEXPAND
		wait on last process in list (if it needs to wait) before prompting again
		waitpid(WNOHANG), wait on zombies but not on the last process
			make that into a function
			call at start and end of processline

command: a | b | c | d
	infd -> command -> outfd
	recursive loop inside processline for pipeline
	to fork a
		// \[0] is left end of pipe, \[1] is right end
		// start pipe
		pipe(pa)
		processline(a, myIn, pa\[1], NOEXPAND NOWAIT) // pa\[1] right end of pipe a
		close(pa\[1])
		// middle of pipe
		pipe(pb)
		processline(b, pa\[0], pb\[1], NOEXPAND NOWAIT)
		close(pa\[0])
		close(pb\[1])
		pipe(pc)
		processline(c, pb\[0], pc\[1], NOEXPAND NOWAIT)
		close(pb\[0])
		close(pc\[1])
		// end of pipe
		processline(d, pc\[0], myOut, NOEXPAND WAIT) // unless told not to wait
		// if the initial processline call has the WAIT flag
		close(pc\[0])
		return
