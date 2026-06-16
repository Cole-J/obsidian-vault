
Main methods are the initial method called when a class is run. The parameter 'args' is an array of string holding all the arguments passed when the executable is run.

Below is an example of how to pass arguments to a main method in a command line.

```java
java Program.class argument1 argument2 argument3 etc
```

The main method must be static, and below is a implementation of a main method.

```java
public class Program {
	public static void main(String[] args) {
		// this method is invoked when run
	}
}
```