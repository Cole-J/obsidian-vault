
uses generics

import java.util.Iterator;

```
public interface Iterator<E> { 

/** Returns the next element. Throws a NoSuchElementException if there is no next element. **/ 

public E next(); 

/** Returns true if an element is left for next to return. */ 

public boolean hasNext(); 

/** Removes the last element that was returned by next. Throws an UnsupportedOperationException if the remove method is not supported by this Iterator. Throws an IllegalStateException if the next method has not yet been called or if the remove method has already been called after the last call to the next method. */ 

public void remove(); }
```