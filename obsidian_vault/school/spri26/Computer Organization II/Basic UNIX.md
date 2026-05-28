users at /etc/passwd or (/etc/master.passwd)
	gret root /etc/passwd, shows to be user 0


groups /etc/group ()

shell
	sh, bourne shell
	csh, C languange shell
	ksh, Korn shell (system V)
	bash, Bourne again shell (GNU)

directory (folders on windows)
	home directory: /home/(name)
		grep (name) to get (name):pass:user#:group#:home directory:working directory
	working directory: /home/(user)/schoolwork/spri26/csci347/a1
	root directory: /
path, name of a file or directory
	relative:
		does not start with a slash and its a route through the file structure to get to the working directory
	absolute:
		the path from the very start of the directory to get to the current file or directory
		

Standard entries in all directory's
	.    the directory itself (use ls -a with -a showing hidden . files)
	..    the directories parent

man pages
	UNIX documentation
	[[manual pages]]
	sections 1-9

UNIX philosophy
	"a tool for each job"

C is standard language of UNIX

Everything in UNIX is a file
	NetBSD
	network connections
	File vs file descriptor (FD)
		file is more abstract
		FD is basically a pointer to a specific file stored in OS
			Open(2) returns fd
			fd is a small non negative integer
			index in a kernel table of open file
			standard files, fd - stdio name, buffereing    [[buffering]]
				0 - stdin, buffered
				1 - stdout, buffered
				2 - stderr, unbuffered
			system calls using fd
				open read write lseek close
	-
	redirection in shells
		ex: ls > file_list # redirect stdout
		> creates an empty file, >> will append to a new one
		ex:
			echo hello > H
			echo there >> H
			cat H # produces "hello\nthere"
		if you have multiple > it will take the last one
			ex
				echo hello > A > B > C, C will store the hello

[[programs vs process]]
[[signals]]

time in unix
	seconds since 00:00:00 1 Jan 1970
	32 bit number runs out in 2038 but NetBSD and linux have converted to 64 bit

[[unix standards]]
[[system types]]
[[File IO]]
