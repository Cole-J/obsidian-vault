
files, worksheets, sourcecode zip file, java and cpp

```
CLASSOBJ class1 = new classobj()
CLASSOBJ class2 = new classobj() // line A

class1 = class2 // line B
```

After line A, the heap will have the memory allocated for the two objs, the stack will have 2 reference addresses pointing to the 2 respective objects on the heap

After line B, both references addresses in the stack will point to the memory allocated in the heap for class2, since class1 is being set to class2. We are assigning the object reference of one to another.



On java, there is the auto garbage collector to automatically clean up unused memory, however if you want it to run sooner you can use System.gc(); to queue it to run sooner (does not mean it will run right as its called)
