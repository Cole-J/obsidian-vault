
The following terminal commands can help keep track of users information and their logins.
```
finger(1) # list information about a user by their username

who(1) # list all users logged in

rwho(1)

last(1)

uptime(1)

ruptime(1)

lastcomm(1)
```

Data files "/etc/utmp" and "/etc/wtmp" help with tracking user logins and system use. A utmp struct is filled in and written to the utmp file by the login program, and the same structure is appended to the wtmp file. These data files are accessed by who(1) to get the data on all current users.

The structure for a utmp entry when accessed in a C file.
```
struct utmp {
  char  ut_line[8]; /* tty line: "ttyh0", "ttyd0", "ttyp0", ... */
  char  ut_name[8]; /* login name */
  long  ut_time;    /* seconds since Epoch */
};
```