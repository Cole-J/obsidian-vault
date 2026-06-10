
an arrays elements are either called by their index or through an iterator

it is best done by for loops

calling through an index

```
for (int i = 0; i < array.length; i++) {
	TYPE element = array[i];
	// so something with element
}
```

or through an iterator

```
for (TYPE element : array) {
	// do something with element
}
```

when looping or otherwise accessing / modifying an array, always make sure that the index is within the arrays bounds