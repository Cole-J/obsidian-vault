
an array can be set as the parameter to a main function

```
public static void main(String[] args);
```

in this case args will now store each argument passed to the program when its executed by the shell (does not include the execution keyword or filename)

ex: on command "java program.class arg0 arg1 arg2", args is now {"arg0", "arg1", "arg2"}