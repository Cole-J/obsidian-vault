
[[When to combine or decompose existing schemas]]




3 steps to design a better schema
	start with some relational schemas
	find functional dependencies for each schema
	use those FDs to normalize the schema (decompose)


functional dependency
	in table, specific of column A implies specific of column B 
	but specific of column B DOES NOT imply specific of column A

finding all FDs
	closure of a schema is a set of all FDs  in the schema

closure of F, (F+)
	how many FDs in F+
		2^n-1 with n=number of attributes / columns
	closure algorithm

normalization
	first normal form
	second normal form
	third normal form
	boyce codd normal form or 3.5 normal form
	stop decomposing when
		schema only has 2 attributes (if only 2 then is BCNF/3.5NF already)
		schema follows BCNF/3.5NF