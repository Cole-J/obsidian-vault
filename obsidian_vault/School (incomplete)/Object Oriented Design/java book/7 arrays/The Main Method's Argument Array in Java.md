
An array can be set as the parameter to a [[The Main Methods in Java|main method]].

```java
public static void main(String[] args);
```

In this case args will now store each argument passed to the program when its executed by the shell (does not include the execution keyword or filename).

Example: (Assuming program.class has a main and accepts inputs through an args array)
On the command "java program.class arg0 arg1 arg2", args is now the array {"arg0", "arg1", "arg2"}