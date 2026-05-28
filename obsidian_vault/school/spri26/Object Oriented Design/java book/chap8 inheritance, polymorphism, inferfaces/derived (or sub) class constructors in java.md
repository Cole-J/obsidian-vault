
the subclass constructor will call the superclass constructor using the 'super' keyword, and then make any changes the subclass requires



if you are multiple classes deep in the hierarchy, you cannot call multiple constructors up the chain

that is, you cannot do super.super.super

you can only call 1 link up, to super