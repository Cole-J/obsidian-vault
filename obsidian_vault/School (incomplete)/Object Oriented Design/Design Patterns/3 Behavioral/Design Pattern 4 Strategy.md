
The Strategy pattern is used to define a general family of classes with their objects being interchangeable. This is often required to follow the [[OOD principle, classes should have a single well defined responsibility|Single Responsibility Principle]] in more complex code.

This make it so that we do not have to use case statements (if else, switch case, etc) in order to handle multiple different algorithms in the same family. They are all setup the same, so the calling method (the Client) can use them interchangeably. This is done by utilizing a common interface between every class in that family of classes.

This does mean that the logic for each class is separated from each other (generally). Common methods (functions) or behaviors (variables) should be declared in the common interface.

The Client will have to pass what specific class from the family of classes it wants to use to the class processing the families logic.

![[Pasted image 20260529123320.png]]

The Strategy interface is declaring the methods needed for every variation of the ConcreteStrategy class.

ConcreteStrategy is an specific instance of a class in the Strategy interfaces family of classes (family being all classes that implement it).

The Context Class is the class that does the actual work or logic with the ConcreteStrategy, through its decupled by referring to interface instead of the concrete.

The Client can then pick (at compile AND runtime), which of the ConcreteStrategy classes it wants Context to work with.

![](https://www.youtube.com/watch?v=Nrwj3gZiuJU&list=PLlsmxlJgn1HJpa28yHzkBmUY-Ty71ZUGc&index=14)
