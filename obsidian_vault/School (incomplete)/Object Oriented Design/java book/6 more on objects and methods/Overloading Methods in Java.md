
Methods with the same name but different parameters can be given different code bodies in Java.

```java
int myMethod(int x)
float myMethod(float x)
double myMethod(double x, double y)
```

The actual 'myMethod' method that is called changes depending on the input parameters.