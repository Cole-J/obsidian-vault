
make sure to rename


system calls
fork(2)
wait(2)


library calls
fprintf(3)
fgets(3)
feof(3)
perror(3)
strlen(3)

looking at microshell code
	has a while forever loop
		prints prompt
		gets the user input
			checks for error with fgets
		gets rid of \n buffer by replacing it with \0 (do this for each arg)
		sends the line to the processor
	
	processor
		forks (returns -1 for error, 0 for child, >0 pid for child)
			(pid is process id)
			if cpid == 0, then current program is the child
				tries to run the program using execlp
				child does not even exit its section
			if >0 pid, or parent, then parent waits for child

	execlp cannot parse, try 'ls -l ant' or similar if ant is folder name

[[School/Computer Organization II/-days/-w2d2]] for info on "" ref
" " is an arg ''

/home/phil/.bin/ush on cow (~/347/src/linux-04[522]$ /home)

echo hello" "there
./args art1 arg2 