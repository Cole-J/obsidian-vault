The group file ("/etc/group"), or the group database, contains information on the different user groups used in / by the OS.
![[Pasted image 20260608185443.png]]

The gr_mem field contains an array (null terminating) of pointers to the user names that belong to that group.

On NetBSD, "wheel" is the name of the group with ID 0.

To access the gorup file in a C file, include <grp.h>.

```
#include <grp.h>

struct group *getgrgid(gid_t gid); // gets a group struct from a group id

struct group *getgrnam(const char *name); // gets a group struct from a group name

struct group *getgrent(void); // returns a pointer to the next group struct
							// returns null on error or end of file
							// it is both an open, and get next function

void setgrent(void); // rewinds the getgrent pointer back to the front of the file

void endgrent(void); // closes the group file and its pointer
```
All of the functions above work with or return a group struct. Here is the declaration of the struct on Linux.
```
struct group {       /* Linux version */
	char *gr_name;   /* group name */
	char *gr_passwd; /* group password */
	gid_t gr_gid;    /* group id */
	char **gr_mem;   /* group members */ }
```
DO NOT free the struct pointers retuned by the group functions, as they are not dynamically allocated. Freeing them frees the actual memory they store.

Supplementary Group IDs are the ids of addition groups that a user can be a part of (up to 16 on most modern UNIX systems).
```
int getgroups(int gidsetsize, gid_t grouplist[]);

int setgroups(int ngroups, const gid_t grouplist[]);

int initgroups(const char *username, gid_t basegid);
```

Note that this only applies to users. While users are allowed to have multiple group ids, files and directories are allowed only 1.