
[[process environment (chapter 7)]]
[[signals basics (expanded) (chapter 10)]]

goto statement in c

only works within the current scope

setjmp and longjmp work outside the current scope

similar to [[exceptions in java]] try catch block

```

func() {
	longjmp()
}

if (setjmp == 0) {
	// normal code
	func()
} else {
	// error
}
```

destroys the stack
[[problem with automatic variables]]