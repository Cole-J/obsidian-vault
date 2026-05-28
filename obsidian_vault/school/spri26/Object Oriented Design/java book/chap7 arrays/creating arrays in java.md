
TYPE\[] name = new TYPE\[(opt: length)]

ex: double\[] temp = new double\[7] // creates an array of 7 doubles

TYPE can also be a object, not just a datatype



you can get the length of the array with its (final) length variable

ex: temp.length

however length cannot be modified as its a final variable



you can also initialize an array during its definition by passing a list of elements

TYPE array = {element0, element1, element2, ...}



Objects referenced by an arrays creation are not created by the array itself and must be created separately

OBJ\[] array = new OBJ\[] will not actually create the OBJs referenced, just the references

at some separate point you must define each OBJ, and then add them to the references

array\[0]= new OBJ(parameters)