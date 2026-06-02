
automatic variables = locals (local variable or function), in stack frame

```
int *ptr () {
	int j;
	j = 35
	return &j;
}
```

j is local, so ptrs stack frame is destroyed when returned

j is now just lose memory

change to static int j in order to keep it in the stack