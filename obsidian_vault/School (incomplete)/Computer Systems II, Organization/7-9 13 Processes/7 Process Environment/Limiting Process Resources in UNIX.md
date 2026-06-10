
Every process has a set of resource limits, some of which can be queried and or changed by the following functions:
```
#include <sys/resource.h>

int getrlimit(int resource, struct rlimit *rlptr);

int setrlimit(int resource, const struct rlimit *rlptr);

// Both return: 0 if OK, –1 on error
```

These functions arguments specifics a resource and a pointer to the following structure.
```
struct rlimit {
  rlim_t  rlim_cur;  /* soft limit: current limit */
  rlim_t  rlim_max;  /* hard limit: maximum value for rlim_cur */
};
```

There are 3 rules that govern the changing of a processes resource limits:
1. A process can change its soft limit to a value less than or equal to its hard limit.
2. A process can lower its hard limit to a value greater than or equal to its soft limit. This lowering of the hard limit is irreversible for normal users.
3. Only a superuser process can raise a hard limit.

list of rlimits and defined resources (in book, add here?)