
An array is a list of elements that use an index as their discriminator within the array.

In Java, they are defined by the syntax:
```java
TYPE[] name = new TYPE(length); // length is optional, Type is the data type
```

there are many behaviors and methods that can be called to obtain information about an array. They will not all be covered here however a use the '.length' behavior to get the length of an array.

```java
int[] example_array = new int[7];
example_array.length; // is equal to 7
```

Note that in the above construction method, each TYPE (or int) in the array is not actually being defined. The only part being defined is a reference (pointer) that can later be used to store something of that type at that element. So make sure to actually add data to the array.

However you can also initialize an array during its definition by passing a list of elements using the syntax:
```java
TYPE array = {element0, element1, element2, ..., elementn};
```