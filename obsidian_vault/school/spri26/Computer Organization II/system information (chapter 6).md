
users information
	/etc/passwd
	finger, prints pass information
	chfn
	chsh

user groups
	/etc/group
	wheel (on BSD) is gid 0

program / information access
	struct passwd \*getpwent() open, get next
	setpwend() rewind
	endpwent() close
	-
	getpwnam(login) gets the name from the login
	getpwuid(uid) gets the pw struct from the uid (use for assignment 3)

struct passwd (DO NOT FREE the structs pointers)
	name
	password
	uid
	gid
	gecos // general information
	dir // home directory
	shell // default shell

group information
	struct group getgrent() open, get next
	setgrent() rewind
	endgrent() close
	getgrnam(name)
	getgrgid(gid) gets the group struct from the gid (use for assignment 3)

struct group (DO NOT FREE the structs pointers)
	name
	passwd
	gid
	mem

supplementary group ids
	belong to more than just your primary group (group command)
	group checks, checks if you are a member of that group
	user can change group of any file or directory to any group which they are a member
	users can have multiple gid, files or directories ONLY HAVE 1