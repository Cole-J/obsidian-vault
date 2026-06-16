
An enum is a 'class' that represents a group of constants.

Example:
```java
// Definition
enum Level {
	LOW,
	MEDIUM,
	HIGH
}

// Access
Level myVar = Level.MEDIUM;
```

Enums can be given their own constants, or such that each enum constant has its own primitive constant.

```java
// Definition
enum Numbers {
	ONE(1),
	TWO(2),
	THREE(3),
	
	// we now need a behavior to act as storage when we are setting or accessing
	private int storage,

	// we also now need a constructor for the enum
	private Numbers(int number) {
		this.storage = number; // you totally can just have them be the same name
	}
	
	// getter method
	public int primitive() {
		return storage;
	}
}

// Access
Level myVar = Level.TWO;
int x = myVar.primitive(); // x now equals the int 2 rather than the enum TWO
```