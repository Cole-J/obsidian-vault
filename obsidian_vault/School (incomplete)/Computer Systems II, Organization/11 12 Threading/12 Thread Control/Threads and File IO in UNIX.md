
threads using the same file pointer can cause a race condition. use pthread read and write alternatives

```
size_t pread(int d, void *buf, size_t nbytes, off_t offset); 
ssize_t pwrite(int d, const void *buf, size_t nbytes, off_t offset);
```