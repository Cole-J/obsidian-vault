
Multidimensional arrays are simply arrays within arrays, or arrays with each of their elements being another array.

Syntax:
```java
TYPE[][] name = new TYPE[row_length][column_height]
// row and column size is optional in the declaration
```

```java
TYPE[][] name = {
{element00, element01, element02, ..., element0m},
{element10, element11, element12,  ..., element1m},
{element20, element21, element22,  ..., element2m},
...,
{elementn0, elementn1, elementn2,  ..., elementnm}
};
```