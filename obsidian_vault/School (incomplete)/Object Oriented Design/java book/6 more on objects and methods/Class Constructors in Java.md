
Constructors are used when creating a new object.

```java
OBJ obj = new OBJ(); // <- the OBJ() method is actually the objects constructor
```

The constructor allows us to define the object, along with allowing us to pass initial parameters to the object during its creation.

Constructors, like functions, can be [[Overloading Methods in Java|overloaded]] with multiple different options for passing different parameters. See the link for more.

It is considered good practice to create a default constructor. A default constructor is a constructor that requires no parameters.

You can call a different constructor from another (within the same object) use the 'this' keyword. The constructor with the matching parameters will then be called within the outer constructor. This is useful for creating default constructors.

```java
constructor1() {
	this("defualt name"); // calls the other constructor
}

constructor2(String name) {
	// does something with the name string
}
```

The constructor is technically a method. However it will only be called once, so it should be focused more on setting up the class rather than conducting logic as the constructor is only called once.

