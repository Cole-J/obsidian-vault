
Each of the 8 primitive data types in java have an equivalent wrapper class:

| Primitive | Wrapper   |
| --------- | --------- |
| byte      | Byte      |
| short     | Short     |
| int       | Integer   |
| long      | Long      |
| float     | Float     |
| double    | Double    |
| boolean   | Boolean   |
| char      | Character |

Some objects may require the Wrapper Object rather than the primitive.
```java
ArrayList<int> myNumbers = new ArrayList<int>(); // Invalid

ArrayList<Integer> myNumbers = new ArrayList<Integer>(); // Valid
```

Wrapper classes have NO DEFAULT CONSTRUCTOR, and to access their data you have to use one of its methods.