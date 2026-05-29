
A Relationship is an association among several entities.
	(think similar to foreign keys)

Example, advisor is a relation
![[Pasted image 20260526120236.png|303]]

A Relationship Set is a set of relations of the same type.

Example, the set of all advisor relationships between the instructor and student table
![[Pasted image 20260526130024.png|337]]

A Relationship Set can also have a Descriptive Attribute (more in [[Attributes]]), which is an Attribute related to the relation between the Entity Sets. If you were to join the Entity Sets (full outer join), the Descriptive attribute would also be added to the resulting table as it exists, just separately from its Entity Sets.

The attributes of a Relationship Set, are the Primary Keys of its Entity Sets, along with any of its own Descriptive Attributes.

Example, the set of all advisor relationships between the instructor and student table, with the date started advising attribute.
![[Pasted image 20260527152326.png]]

Degree of a Relationship Set is how many Entity Sets one Relationship Set connects. Most are a binary relationship between two entity sets, through it is not limited to that.