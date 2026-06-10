
The Singleton pattern is ensure that only one instance of itself exists and to provide a single point of access. On top of that it will allow you to access the object from anywhere in the application (like a global variable), while also encapsulating the attributes into a single class.

This is used to create a many (clients) to one (singleton) relationship, and should be used in cases where you do no, or should not, create a new object for each client. Instead having each client reference only a single object (the singleton). Useful for defining a database or similar.

```
public class Singleton {

	private static volatile Singleton instance;
	private String data;
	
	// private constructor
	private Singleton(String data) {
		this.data = data;
	}
	
	// public and controlled access
	public static Singleton getInstance(String data) {
		// prevent having to fetch instance from mem multiple times
		// so we are recreating it as a local variable to improve preformance
		Singeton result = instance // this.instance
	
		if (result == null) {
			synchronized (Singeton.class) {
				result = instance
				if (result == null) {
					instance = result = new Singeton(data);
				}
				
			}
		}
		return result;
	}
}
```

When implementing, make sure that the constructor for the singleton is private, and that the method of accessing the singleton (getInstance in this case) wraps the instance constructor in a null check. The null check prevents more than 1 singleton being allocated and returned.

In order to make the code multithread safe, the inside of getInstance will need to be wrapped in a synchronized block. That block can be removed if you are not working with multithreads. The double null check is used to ensure that a thread will only wait if it does actually need to be constructed. The second check is still needed in case multiple threads have been stopped by the sync barrier to ensure that only 1 can create it.
(For thread 2, its initially null, but thread 1 can then create the instance after thread 2 waits which means its not actually null for thread 2 after the barrier even through it was before.)

![[Pasted image 20260603171143.png]]

The client has it interact with the Singleton class only through its methods. It is unable to actually reconstruct its own singleton as the constructor for the singleton class is private.

![](https://www.youtube.com/watch?v=tSZn4wkBIu8&list=PLlsmxlJgn1HJpa28yHzkBmUY-Ty71ZUGc&index=3)