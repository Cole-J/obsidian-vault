
defined with the 'static' keyword

static variables or methods belong to the class as a whole and not an individual object



static variables

the integer, public static int x, will be a global variable (or in this case, class variable) shared by all instances of the class



static methods

they are also not tied to a specific instance of the class

commonly used for more mundane methods, such as conversion or addition or summation methods

the static keyword will allow the method to be invoked without using an object
	ex: if a() is a method in the temp class, and b() is a STATIC method in the temp class
		temp.a() is valid
		temp.b() is valid
		a() is invalid
		b() is valid

static methods can also be used for communication by getting or setting static variables



when mixing static and non static

a non static method can reference a static variable or method

a static method cannot reference a non static variable or method
(unless the object is passed or created within the static method)