When converting, use all Relational Tables created from this process in the final Model.

- First create a table for each Entity Set. (converting Entity Sets)
	- If a specific Entity Set includes a [[Representing Composite Attributes in an E-R Model Diagram|Composite Attribute]], it will need to be split into multiple tables such that the Composite Attribute is removed to its own table along with the Entity Sets [[Keys of an Entity Set|Primary Key]].
- Second create a table for reach Relationship Set by,
	- The Attributes of the new Relation table is the union of the [[Keys of an Entity Set|Primary Keys]] of each Entity Set (of the Relation set), and of the [[Relationship and Relationship Sets|Descriptive Attributes of the Relation Set]].
	- Then choose the new primary key from one of the Relationship Sets Entity Sets primary keys. Again, since it much be uniquely identifying look for the "many" side of the relation.

Example, 
![[Pasted image 20260527152326.png]]
- In step 1, instructor and student both get a relational table, each with the attributes id and name.
- In step 2, the advisor relational table is defined, with attributes instructor id, student id, and date, with student id being the primary key.

