
help:
	help

breakpoints
	break main
	break function_name
	break file.c:7 if i == 2
		will break at file.c on line 7 if variable i == 2

running:
	run arg_list

step to the next line
	next

step over function
	step

next frame / step (step, then do next, next, next)
	next


call a function from the gdb line
	call function_name
continue running (until breakpoint or other)
	cont

list source code
	list

print values
	print

set variables inside gdb
	set var num=10

location of and function calls
	where

information
	info
		info args
		info locals
		info break
			all breakpoints and information

quitting
	quit