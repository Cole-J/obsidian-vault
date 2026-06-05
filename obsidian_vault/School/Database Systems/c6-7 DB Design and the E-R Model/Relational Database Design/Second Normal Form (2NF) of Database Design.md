
All non primary key attributes must be functionally dependent on the whole primary key. The result of this is that there cannot be 2 possible primary keys present in the table.

To comply with 2NF, InstructorStudent should be split in two. insName not being dependent on the value on stuID violates 2NF.
![[Pasted image 20260604191012.png]]