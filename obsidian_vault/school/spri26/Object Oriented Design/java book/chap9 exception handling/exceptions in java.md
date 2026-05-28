
exceptions are errors found while the program was running



you can create your own using the 'throw new Exception("exception message")'

it will create a new Exception object and throw it up the chain

if the throw is done in a function, it is the callers job to catch the exception thrown in its own try catch



have the called function have a prototype with the throws e keyword

ex public void method(parameters) throws Exception {code body}