
can have your program look for specific exceptions

below will only catch an IOException and not the general Exception

```
try {
	// do something
} catch (IOException e) {
	// do something with the caught exception
}
```