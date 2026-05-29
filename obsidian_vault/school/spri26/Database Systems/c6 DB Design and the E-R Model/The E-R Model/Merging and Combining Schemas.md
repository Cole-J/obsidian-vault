
Because of how the E-R Diagram uses relationship sets, when converting to the relational model we are left with many tables whose only job is to point to another table. That table can generally be merged with one of its Entity Set tables.

ins_dept only points from an instructor to a department. You could merge instructor and ins_dept into one (instructor to department is a many to one, so merge on the many side). This also requires [[Participation of an Entity Set in a Relationship Set in an E-R Diagram|Total Participation]] to merge the two, otherwise thing start to break down (null values would appear).
![[Pasted image 20260528192457.png]]

Here is the resulting table. It still points to the department table.
![[Pasted image 20260528192656.png]]

So remember, in order to join a Relation Set table with a Entity Set table it must have
- A [[Mapping Cardinalities|One to Many]] relationship (Relation to Entity)
- A [[Participation of an Entity Set in a Relationship Set in an E-R Diagram|Total Participation]] of the Entity to the Relation

Who can join with who?
![[Pasted image 20260528193231.png]]
- instructor can join with inst_dept
- student can join with stud_dept
- student CAN NOT join with advisor (as its a partial participation)

