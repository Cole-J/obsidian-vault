
An arrays elements are either called by their index or through an iterator (we talk more about iterators in its [[Design Pattern 1, Iterator|design pattern]] note).

Generally since you can know an arrays length, looping through one is best done in a for loop.

Calling an element by its index:
```java
for (int i = 0; i < array.length; i++) {
	TYPE element = array[i]; // again TYPE is a standin for any data type
	// do something with the current element
}
```

Calling an element through the array iterator:
```java
for (TYPE element : array) {
	// do something with the current element
}
```

When looping or otherwise accessing / modifying an array, always make sure that the index is within the arrays bounds (0 <= index <= array.length).