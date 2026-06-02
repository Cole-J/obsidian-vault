
use .clone() in order to deep clone

public class classname implements Cloneable

simple clone using superclasses clone

```
public Object clone() { 
	try { 
		return super.clone();//Invocation of Object's clone 
	} catch(CloneNotSupportedException e) {
		//This should not happen. 
		return null; //To keep the compiler happy. 
	} 
}
```