
The passwd file ("/etc/passwd"), or the user database, contains information on the users logged in / by the OS. The passwd file has historically been an ASCII file with each line containing the fields described by the figure below, separated by colons.
![[Pasted image 20260608142000.png]]

There is usually an entry of the name "root", with a user ID of 0. That is the "superuser".

Some shell commands associated with Users and the passwd file.
```
finger(1) # print out password information of a user
chfn(1) # change information in the passwd file
chsh(1) # change your login shell
```

To access the passwd file in a C file, include <pwd.h>.
```
#include <pwd.h>

struct passwd *getpwuid(uid_t uid); // gets a passwd struct from a user id

struct passwd *getpwnam(const char *name); // gets a passwd struct from a user name

struct passwd *getpwent(void); // returns a pointer to a passwd struct
						     // returns null on error or end of file
						     // it is both a open, and get next function

void setpwent(void); // rewinds the getpwent pointer back to the front of the file

void endpwent(void); // closes the passwd file and its pointer
```
All of the functions above work with or return a passwd struct. Here is the declaration of the struct on Linux.
```
struct passwd {      /* Linux version */
	char *pw_name;   /* user name */
	char *pw_passwd; /* encrypted password */
	uid_t pw_uid;    /* user uid */
	gid_t pw_gid;    /* user gid */
	char *pw_gecos;  /* general information */
	char *pw_dir;    /* home directory */
	char *pw_shell;  /* default shell */
};
```
DO NOT free the struct pointers retuned by the passwd functions, as they are not dynamically allocated. Freeing them frees the actual memory they store.

The shadow File and shadow passwords.
...
//////////