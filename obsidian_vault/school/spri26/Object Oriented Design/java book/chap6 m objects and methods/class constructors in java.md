
OBJ obj = new OBJ(); // <- the OBJ() method is actually the objects constructor

the constructor allows us to define the object



constructors can be overloaded with multiple different options for passing different parameters
[[overloading in java]]

it is good practice to create a default constructor (one with no parameters)

you can call a different constructor from another use the 'this' keyword, the constructor with the matching parameters will then be called within the outer constructor

```
constructor1() {
	this("defualt name"); // calls the other constructor
}

constructor2(String name) {
	// does something with the name string
}
```



the constructor is a set method, but also different. Its focus is more around initializing the variables in the class rather than setting or resetting them, as the constructor is only called once.

