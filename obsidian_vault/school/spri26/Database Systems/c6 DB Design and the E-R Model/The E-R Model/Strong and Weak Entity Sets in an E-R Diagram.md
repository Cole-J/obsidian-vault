
A Weak Entity Set is a type of Entity Set where you cannot add another Entity to the Set without an attribute having already been defined by another Entity Set.

Because of this, Weak Entity Sets do not have sufficient attributes to form a primary key.

While other texts do it differently, in CSCI330 we used a double diamond to represent the Identifying Relationship.
![[Pasted image 20260528190249.png]]

A Strong Entity Set, is not a Weak Entity Set. That's it.

To know if its a Strong or Weak Entity Set ask yourself: Can an Entity be added / exist without needing an attribute to already exist in another Entity Set.