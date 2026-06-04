
Once we have an initial Relation Model Database, (After [[Conversion to Relational Schemas|Conversion]] and after an initial [[Optimizing the Conversion between an E-R Model and a Relational Model|Optimization]] if the Relation Model is based on an E-R Model diagram) we can optimize the Relational Model by combining like Relational Schemas or by decomposing large Relational Schemas.

We generally should avoid combining schemas after converting from an E-R diagram to a Relational Model. Most of the combination happened in the initial Optimization so doing more combination now can result in repetitions of data in a table.

Why we want to reducing repetition:
- Uses less storage.
- Reduces the change of an update anomaly.
- Reduces insertion issues.

So when combining schemas make sure they follow the lower rules about decomposing larger schemas. Repetition is later described by functional dependencies.

When we start splitting, or decomposing schemas (splitting large tables into smaller ones), we first want to consider if the repetition found is actually [[Repetition or Co-incidence of Data in a Relational Model Table|Repetition or just a Co-incidence]].

If it is an actual instance of repetition, it can by described as a [[Functional Dependencies, Repetition in the Relational Model|Functional Dependency]]. We can use use them to decompose, or what's later called Normalizing the schema. So to know what tables need to be decomposed we will first find the functional dependencies a table (its closure), and then use that to know if it needs to be normalized or not.




[[Lossy vs Lossless Decomposition, Types of Table Decomposition]]


3 steps to design a better schema
	start with some relational schemas
	find functional dependencies for each schema
	use those FDs to normalize the schema (decompose)

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

