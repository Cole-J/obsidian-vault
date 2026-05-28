

```

printf("1")
...
printf("2")
...
printf("3")
...
...
printf("9")

```
ex: if the above is buffered, you may not get through the whole 9 prints if the code errors somewhere

if you changed to fprintf(stderr, "#"), stderr is unbuffered so it will print immediately, puts is similar