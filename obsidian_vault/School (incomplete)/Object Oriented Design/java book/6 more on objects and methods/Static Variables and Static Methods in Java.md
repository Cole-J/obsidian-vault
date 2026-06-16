
Static variables or methods are declared using the 'static' keyword. Static variables or methods belong to the class as a whole and not an individual object. They are especially global variables within the scope of each instance of the class, and are useful when trying to pass information between classes of the same family.

```java
// x is static, and shared by all instances of x's parent class
public static int x;
```

While static variables are useful for passing information, static methods are commonly used for more mundane methods, such as conversion or addition or summation methods. They are also useful for interacting with static variables (required for private static variables).

It also allows for the method to be invoked without its object.

```java
OBJ obj = new OBJ();

// consider the method m(), and the static method sm()

obj.m() // is a valid operaiton
obj.sm() // is also a valid operation
m() // is invalid as its called without its object
sm() // is valid as static methods do not need to be called with their object
```

When mixing static and non static:
- A non static method can reference a static variable or method.
- A static method cannot reference a non static variable or method.
	- (unless the object is passed or created within the static method)