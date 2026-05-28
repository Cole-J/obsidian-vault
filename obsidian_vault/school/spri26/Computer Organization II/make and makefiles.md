
look into suffix rules for specifics on how to use make in csci347
[[make suffix rules]]

Make -- a command generator program
	input: a description file, normally called Makefile or makefile or -f filename
	GNUMake on linux by default
	-
	temporal programing language
		time based
	-
	output: a series of commands to a shell

```
# this is a simple makefile       # this is a comment

FILES = f1 f2 f3                  # make variables or macros, NAME = value

result: $(FILES)                  # targets: "result", "clean"
	cat $(FILES) > result         # dependencies: f1 f2 f3
	                              # $(FILES) = f1 f2 f3

$(FILES):
	echo "This is file $@." >> $@ # $@ is a variable storing the file name
	                              # if any of the FILES do not exist this will -
	                              # create them

clean:
	rm -f result                  # description line: <tab>command

clean_all:
	rm -f reuslt $(FILES)

```

targets must be newer than the dependencies, otherwise the target is rerun

to see tabs and "end of  lines" (EOL char=$) in the make file with
	cat -e -t -v Makefile

when you run make
	it runs the first first target

can also run make targetname to run a specific target

targets
	may be a file name to be made (make "my specific program")
	can also not make a file by a name (make all or make run)

dependencies
	needs to be made before the target, if its older make will 


creating a simple method for compiling.
will create a hello executable from a hello.o obj file (for linking) which is created from a hello.c file

```
hello: hello.o
	gcc -g -h hello hello.o

hello.o: hello.c
	gcc -g -c hello.c

clean:
	rm -r hello hello.o
```

creating a multiple file compile

```
hello: hello.o bye.o
	gcc -g -o hello hello.o bye.o

hello.o: hello.c
	gcc -g -c hello.c

bye.o: bye.c
	gcc -g -c bye.c

clean:
	rm -r bello hello.o bye.o

# dependency list
hello.o bye.o: bye.h
# if bye.h is changed the others need to update
# if bye.h was changed it would cause issues since both hello.c and bye.c need it
# could also have bye.h mentioned in hello.o and bye.o
```

[[make suffix rules]]

macros
	@
	$@ -- current target
	$? -- newer prerequisite list

macro substitution
	SRCS = a.c b.c
	OBJS = ${SRCS:.c=.o} # objs is now the same names as the c files but as object files

Multiple targets
	a b c: d e f
	all: $(MULTI)   # phony target


other stuff
	@ will cause the line to hidden when run
	- at the start of a line causes errors to be ignored
	 \$\$ is the character $
	${SHELL} is often set to the name of the shell to call
	continuation lines: backslash (\\) followed by end of line
	some makes use #include or .include

recursive make
	SUBDIRS= A B C
	all:
		for d in ${SUBDIRS} ; do \
			{cd $\${MAKE} all} ; done