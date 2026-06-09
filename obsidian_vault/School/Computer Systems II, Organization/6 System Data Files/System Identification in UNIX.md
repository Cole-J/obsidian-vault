
The function uname(3) is used to return information on the current host and operating system.
```
#include <sys/utsname.h>

int uname(struct utsname *name);
```
The function takes in the address of, and fill out, a utsname struct which has the following declaration. Note that each field is a string that is null terminated.
```
struct utsname {
  char  sysname[];    /* name of the operating system */
  char  nodename[];   /* name of this node */
  char  release[];    /* current release of operating system */
  char  version[];    /* current version of this release */
  char  machine[];    /* name of hardware type */
};
```

It also has a terminal version usname(1).
```
uname(1) # prints the system information to stdout
```

On some UNIX (BSD derived) systems there is also a gethostname function and terminal command.
```
#include <unistd.h>

int gethostname(char *name, int namelen);
```

```
hostname(1) #
```
With the host name being the name of the host on a TCP/IP network. Found in the "/etc/rc" or "/etc/init" data files.