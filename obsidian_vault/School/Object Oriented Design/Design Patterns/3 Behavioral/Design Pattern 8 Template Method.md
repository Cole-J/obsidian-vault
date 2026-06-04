The Template Method pattern is used to define a system for breaking down large algorithms into a series of methods. The smaller, simpler methods (decomposed methods) are then placed into a single "Template Method".

This make it so that the smaller steps can be easily reused in different Template Methods. The Template Methods are then responsible for ordering the smaller steps correctly and calling them as needed.

Each step or decomposed method may be abstract or have some default implementation inside a parent class. To create a Template Method algorithm, the client must provide its own subclasses (parents for the decomposed methods) and implement any abstract steps (decomposed methods).

In simpler words, the Template Method defines a skeleton of an algorithm in the superclass and lets subclasses override specific steps of the algorithm without changing the structure.

![[Pasted image 20260603164424.png]]

The AbstractClass has a method (templateMethod) which will call each step method in order.

The ConcreteClasses can then:
- (Must) Define any abstract step methods.
- (Optional) Override any specific step methods with their own definition.

A client will then work with a ConcreteClass, and will generally call just the templateMethod, disregarding any step methods in most cases.

![](https://www.youtube.com/watch?v=cGoVDzHvD4A&list=PLlsmxlJgn1HJpa28yHzkBmUY-Ty71ZUGc&index=10)
