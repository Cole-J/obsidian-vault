
The Proxy pattern is used to define a substitute or placeholder for another object, allowing more controlled access. It will implement the interface of its sub / wrapped object, and its defined methods call into the sub / wrapped objects defined methods, but the proxies methods can also do more than just calling into those methods.

This make it so that we can have a proxy checking the data being sent to the client by the sub / wrapped object, allowing caching or denying of specific data.

![[Pasted image 20260529133829.png]]

The client interacts only with the interface which both the Service and Proxy implement. The Proxy object should be passed by the client in place of the Service object.

Service is wrapped in the Proxy class. So the Client is only going to call the proxy, which can then decide to call the service if its needed. Again, the Service methods are generally called within the matching Proxy methods, but they do not have to be (example, a cache hit).

The flow of the doThis() method is,
1. Client calls doThis() via the interface
2. Proxy.doThis() is called, some logic is done
3. is Proxy wants to call lower (example, a cache miss), it then calls its wrapped Service.doThis().

![](https://www.youtube.com/watch?v=TS5i-uPXLs8&list=PLlsmxlJgn1HJpa28yHzkBmUY-Ty71ZUGc&index=23)

Extra bit, a real world example of a proxy is the proxy server. Alongside forwarding requests, it acts as a firewall, cache, and distributer for the devices on its network and the general web. A client server cache is probably the best example of a proxy in practice.
![[Pasted image 20260529132901.png]]