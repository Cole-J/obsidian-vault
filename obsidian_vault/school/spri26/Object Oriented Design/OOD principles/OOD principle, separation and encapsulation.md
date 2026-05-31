
Separate things that change from things that stay the same. Determine what in a class might change, and encapsulate them away into a new class

You can still have references (even within the classes) to each other, as this is less about what is changing at runtime, and more about what parts of the code get changed. This principle is meant to allow the code of some objects to be easily changed while not affecting other objects.