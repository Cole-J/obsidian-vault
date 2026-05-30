
The Adapter pattern is used to allow objects with incompatible interfaces to collaborate with one another. They are incompatible if they include different declarations (either behavior / variable, method / function, or even different method / function parameters).

The object being converted is implemented by the adapter, with the converted output object being wrapped in the adapter class.

This make it so that one object, say its function parameters are different from the other, can have its parameters redefined within the adapter before calling the other.

![[Pasted image 20260529125247.png]]

Client and ClientInterface represent the main logic classes that the Service class is incompatible with. ClientInterface specifically is what's in some way incompatible with Service, but since the interface is, the Client that refers to the interface is also incompatible with it.

The Adapter class is then used as Service is incompatible with Client as it does not follow the ClientInterface. Adapter does follow the ClientInterface, while having a behavior (variable) referring to the Service (wrapping it). The Adapter class can then define each method in terms of Service's methods. Usually the Adapter.method(data) method simply converts data to specialData, and then just calls Service.serviceMethod(specialData). Hence, an adapter.

![](https://www.youtube.com/watch?v=wA3keqCeKtM&list=PLlsmxlJgn1HJpa28yHzkBmUY-Ty71ZUGc&index=17)