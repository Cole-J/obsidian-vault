
The iterator pattern is used to define a way to move through a data structure (list, tree,  etc), while encapsulating the actual structure away from the calling method.

This makes it so that the data structure being realizing the iterator interface is disconnected from the client actually moving through the data structure.

![[Pasted image 20260526100042.png]]

The Iterator interface declares the ways to traverse any possible data structure that will be used.

The Concrete Iterator, which implements the Iterator Interface, defines the ways to traverse the specific data structure being used in that program. It should track progress through the data structure locally, so that multiple iterators can work simultaneously (do not track via class static variables)

The Collections are the actual data structure. The iterator is defined by the data structure. A generalized one by the Interface and then the specific for the Concrete. The client then iterates through the data structure by calling the Collections iterator, but only through their interfaces allowing decupling from the Concrete classes.

![](https://www.youtube.com/watch?v=QCWJWfuAfJc&list=PLlsmxlJgn1HJpa28yHzkBmUY-Ty71ZUGc&index=16)