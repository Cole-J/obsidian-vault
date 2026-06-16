
Remember that the '\==' operator will check if two objects occupy the same space in memory. Unless you are working with clones, this will not work for comparing the individual elements of each array.

In java, use the '.equals()' method when comparing equality between two objects. Since arrays are objects they have access to that equality method and it will check if each element (in order of the index) of the two arrays are equal.