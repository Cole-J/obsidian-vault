

```
CC=gcc
CFLAGS= -g -Wall

hello: hello.o bye.o
	# using @echo will not put echo into the output
	# use this to print from makefile
	# @ tells the line to run quietly and not show input only output
	@echo "$FILES $? are newer than hello"
	gcc -g -o hello hello.o bye.o

clean:
rm -f hello hello.o bye.o
```

automatically compiles only what was recently touched

for bigger projects this is necessary


specific suffix rules
	suffic: file.c, suffix is c
	Others: .o .cxx .b .p

turning a .c file into a .o file?
	CC=gcc
	CFLAGS= -l
	SRC: a.c
	OBJ: ${SRC:.c=.o}
	SUFFIXES: .c .o
	.c.o:; $(CC) $(CFLAGS) -c $<
	or for cpp .cpp.o;: ${CXX} ${CPPFLAGS} -c $<

