The basic time service provided by the UNIX kernel counts the number of seconds that have passed since the Epoch: 00:00:00 January 1, 1970, Coordinated Universal Time (UTC).

UNIX systems:
1. Keep time in UTC instead of local time.
2. Automatically handle time conversions.
3. Keep the time and date as a single quantity.

The time function returns the current time and date (wall clock).
```
#include <time.h>

time_t time(time_t *calptr); // always returns time_t,
						   // but can also store to the location at calptr
```

For system clocks, referring to time registered by any number of systems or / cpus. Known as cpu clock.
```
#include <sys/time.h>

int clock_gettime(clockid_t clock_id, struct timespec *tsp);

int clock_getres(clockid_t clock_id, struct timespec *tsp);

int clock_settime(clockid_t clock_id, const struct timespec *tsp);

int gettimeofday(struct timeval *restrict tp, void *restrict tzp);
```

The gettimeofday function works with a timeval struct. Below is its declaration.

```
truct timeval { 
	long tv_sec; /* seconds since Jan. 1, 1970 */ 
	long tv_usec; /* and microseconds */ 
}
```

When working with time zones, the actual implementation varies however in NetBSD:
- There is a data file "/etc/localtime".
- Information about converting to all stored time zones is stored in "/usr/share/zoneinfo/"

```
truct timezone { 
	int tz_minuteswest; /* of Greenwich */ 
	int tz_dsttime; /* type of dst correction to apply */ 
};
```