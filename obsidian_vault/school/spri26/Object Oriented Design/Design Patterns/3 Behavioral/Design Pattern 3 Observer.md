
The Observer pattern is used to implement a notification system of communication between two objects.

This make it so that one object can subscribe or register with another object in order to be notified later by the other object.

![[Pasted image 20260529121224.png]]

The publisher is the notification or subscription service. Its job is to manage the service by adding, removing, or notifying. The notify() method specifically, will call the Subscriber interface update() method.

Using an interface, there can be multiple different type of ConcreteSubscriber (examples: Email, MobileApp, Telephone) as its declaring the notification interface, thus decupled from the Concrete classes.

The Concrete then preforms some action in response to the notification issued by the Publisher (example: send the main to the registered subscriber).

The Client is responsible for creating the publisher and subscriber objects separately, and will register subscribers for publisher updates.

![](https://www.youtube.com/watch?v=-oLDJ2dbadA&list=PLlsmxlJgn1HJpa28yHzkBmUY-Ty71ZUGc&index=12)