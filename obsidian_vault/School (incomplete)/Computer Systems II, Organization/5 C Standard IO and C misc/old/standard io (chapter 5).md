
not unix, c standard library

why
	unix is programed in c
	stdio is unix based

\#include \<sdtio>

standard files
	variable stdin
		filename STDIN_FILENO
	variable stdout
		filename STDOUT_FILENO
	variable stderr
		filename STDERR_FILENO

buffering
	buffers used by stdio
		library calls do not go directly to the os
		printf("hello"), hello is put to the buffer, once buffer is full stdio calls write to write out to the file
		-
	types of buffers
		fully blocked buffered (stdin file, stdout file)
			fill buffer first before writing
			only calls os when buffer is full
		line buffered (stdin terminal, stdout terminal)
			only call os when the newline \n is sent to the buffer
			only calls os when a line is complete (or buffer full)
		unbuffered (stderr)
			calls os for each call, may use buffer to create the output but it is immediately sent out
			stderr
			-
	setting buffers
		setvbuf(file, buf, mode, size)
			setbuf(3)
			setbuffers(3)
			setlinebuf(3)
		int fflush(file)
			immediately sends any buffer for a file to be written to the file
		int fpurge(file)
			removes the current contents of the buffer

standard io file functions
	fopen, returns a FILE and not an int, can be given a path str or fd int
		mode:
			r: read, file must exist
			w: write to file, can create file if it DNE
			a: append, can create file if it DNE
			r+: read and write but the file must exist
			w+: write and read but can create file if it DNE
			a+: append read, can create file if it DNE
			rb wb ab rb+ etc: binary versions for the above modes
				mainly for windows os operations, sends raw data for users on other os
		returns null on error
	fclose()
	-
	fgetc
	getc
	getchar, moves the pointer forward
	ungetc, moves the pointer backwards
	-
	gets() very unsafe
	fgets
	-
	feof, is it at the EOF
	ferror, gets the error number
	clearerr, clears the error number
	fileno gets the file number
	-
	outputs
	-
	fputc
	putc
	putchar
	-
	fputs
	puts, adds an \n

binary io
	array based. you are defining an array first and then reading binary into that array
	-
	fread
	fwrite

positioning a stream
	somewhat deprecated functions
	fseek
	ftell
	rewind
	-
	now use
	fgetpos
	fsetpos

formatted output
	printf, prints to stdout
	fprintf, prints to a specified stream
	sprintf, formats to a character string, no buffer overflow
	snprintf, same as snprintf but with buffer overflow prevention
	-
	printf and fprintf
	format string to pint with conversion specifiers
		conversion %\[flags]\[fieldwidth]\[.percision]\[modifier]conv
			ex: %d, conv is the d, the \[ \_\_\_\_ ] are optional
			conv
				%d %i, flags l for long or s for short %sd %ld
				%x for hex or %o for octal
				%c for char
				%s for string
				%e, %f, %g, real numbers
				\%% for printing %
			flags
				- left justify, right justify by default (starts column at left vs right)
				+ always sign the number
				0 zero padded
				(space) blank space for/instead of +
				space and + cannot be there at the same time
			field width
				(number) that many columns, can use zero padding here instead of space padding by default
				\* uses an integer from parameters for number, for more dynamic uses
			precision (floats and strings)
				number of digits after decimal point
				number of characters of a string to print
				\* uses an integer from parameters for number, for more dynamic uses
		returns an int, number of characters printed
	-
	scanf fscanf sscanf
	converting from input into memory location (say convert str input to int to be used in code)
	format
		spaces: match white space
		other chars: match that char
		conversion: %\[flags]\[fieldwidth]\[modifier]\[modifier]conv
	returns the number of input items assigned

temporary files and names
	FILE \*tmpfile()