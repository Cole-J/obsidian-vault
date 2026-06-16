
Consider wrapping your array within an object. In the class definition it would be set as a private behavior, with a client required to use constructor, setter, and getter methods in order to access the actual data and elements within the array.

This does two things;

1.

Increased security. Additional check can be done by the setter or getter methods as the client will not have direct access to the array elements but rather abstracted access through methods.

2.

Decoupling of data from data storage type. At runtime different arrays could be swapped out, and generally the client does not have to worry about array specifics.