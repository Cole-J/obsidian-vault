
The State pattern is used to define ways to have a class change some internal state as its methods are called. It may start in state A, with a method that can transform it into state B, again to state C, or back again to state A. Each of those states can then have different implementations of the same interface.

finite state machine

This make an implementation of a finite state machine in code. A finite state machine is a machine that has a finite number of states in which a machine can be, with each state behaving differently. A state can also switch the state of the overall machine to some new state. These switches (called transitions) have rules that are finite and predetermined. See more in the FSM example below the UML.

![[Pasted image 20260603154932.png]]

The Context class stores a reference to its internal state, with its methods in some way interacting (calling) the State interfaces methods.

The State interface declares the state specific methods, they will be overridden by all Concrete State classes and Context will use the interface when calling into them in order to remain decoupled. It must declare ALL methods that will be used by ANY of its states. 

The ConcreteState (representing multiple) represents the different states that the Context class can be in. A ConcreteState class will define the methods declared in its interface. Those methods CAN and many times SHOULD be used to change from the current state to another, allowing a method call in Context to change the internal state.

The Client will primarily interact with the Context class, with the Contexts internal state generally hidden from it unless fetched.

A key difference from the [[Design Pattern 4, Strategy|Strategy]] pattern is that the states are interacted with primarily by the Context rather than the Client. In the strategy pattern, the Client will give the Context a Strategy to use for a problem, while in State the Context will have an internal state that changes as the Client interacts with the Context. 

This causes each strategy to be unaware of another, as the Client or Context will decide on one to use for a specific task, while each state often holds references to another in order to transition.

FSM Example: Turning on, and unlocking, your phone. The internal state (off, locked, ready) of the Context (phone) changes in a finite number of ways. The methods (buttons) do different actions depending on the internal state of the context (phone), even being able to completely change the state of the context (ex: in off state, using power button changes to locked state).

![[Pasted image 20260603155831.png]]

![](https://www.youtube.com/watch?v=abX4xzaAsoc&list=PLlsmxlJgn1HJpa28yHzkBmUY-Ty71ZUGc&index=13)