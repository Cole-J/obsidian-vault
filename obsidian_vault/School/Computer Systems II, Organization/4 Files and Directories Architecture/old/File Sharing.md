
Process Table    Open Field Table    V-Node
fd entry        --> status / pointer --> real file entry

each process has its own table for the files its using

fd is a small int because it is the index in the process table, which either holds nothing or a pointer to the open field table and other information about the file and how it was accessed.

v-node has information about the file on the physical disk, the file pointer points to the v-node, with the v-node pointing to its specific file. V-node is the bridge between memory and disk

to share a file
	2 fd entries can point to the same spot on the open field table
	2 pointers in the field table can point to the same v-node

independent processes opening a file
	both process 1 open() and process 2 open()
	2 process tables and 2 open file tables
	1 v-node
	-
	if p1 opened in wr and p2 opened in r then there would be 2 open file tables entry
	if p1 opened in wr and p2 opened in wr then there would be 2 open file table entry
	if p2 is a fork of p1 after the file was opened, they share a open file table entry
	-
	if p2 is a fork of p1, the process table is copied to the child. if fd is in index 4 then there is a new child process table with new fd at 4
	-

if child / parent sharing, as both add to file its done as an append

if 2 seperate processes share a file it gets messy unless done as an append



More file sharing

int dup(int oldfd) and int dup2(int oldfd, int new fd)
	dup duplicates a fd in the process table. Both the old and new fd point to the same entry on the open file table. It replaces the first null pointer on the process table.
		useful to force fd to be 0 1 or 2 (STDIN STDOUT STDERR). can make printf write to a file instead of STDOUT
	-
	dup2 streamlines dup if you want to write to 1, ex: dup2(fd, 1)
		closes the newfd if it is already used

related file system calls
	int fcntl(int fd, int cmd, ...) file control
		duplicates fds
		get/set fd flags
		record locks
	-
	int ioctl() generic io control
		"catchall" file control
		special hardware control
		e.g. terminal baudrate
	-
	