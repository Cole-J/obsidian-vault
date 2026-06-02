
get this done by tuesday, get it branched in git before working on the second part


when using fork
ush calls fork to create another ush
the child ush program is replace with the execlp command / program
the parent ush pid value is the status of the execlp command program
even as execlp is called it replaces the ush program, but its still just one program

"   ls -l abc   \0"

initial a1 assignment works with "ls", but not "   ls" or "ls -a" as execlp only works with the exact string

look up parameters for execlp, and eventually replace execlp with a different exec?? function

if you want to parse "   ls  -a  abc    \0"
separate into array argv = {ls, pa, abc, \0}
spaces are defining the start/end of an argument so you can create an array of pointers
create the to parse to be "   ls\0  -a\0  abc\0    \0" with a pointer to l, -, a, and \0

how to 
count arguments in "   ls  -a  abc    \0"
	while not at end of string, looping once per argument and not once per character
		skip spaces (nested loop?)
		if not at EOS ('\0'),
			count++, 
			look for end of arg / start of spaces or EOS ('\0')

malloc the pointer array
	the first pointer would be line+3 to get a pointer to 'l'
	&line{3} to get a pointer to 'l' (recommended)
	choose only 1 of the above and be consistent
	array type is 'char** args'
	args{0} is now the first pointer to "ls" so args{0}{0} is 'l'

assign pointers and EOS characters
	make each pointer in the pointer array point to the proper arg in the line string
	same as the count arg loop but add in count++
		assign pointer
	and in search for whitespace, if needed add EOS

edge cases
	make sure to ask for help
	check info about gitlabs
	








point of assignment 1 is to make this
DO NOT USE ANY FUNCTION GIVEN, no stringset or stringtok or getopt
add function into /* Start a new process to do the job. */

finite state machine
