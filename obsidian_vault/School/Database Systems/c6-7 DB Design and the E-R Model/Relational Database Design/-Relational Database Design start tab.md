
The 3 steps for designing a better database schema which follow the relational model are:
1) Start with some relational schemas.
2) Find out the functional dependencies for each schema.
3) Use the functional dependencies to Normalize (decompose) the schema.
The specific of each step will be further discussed in this note.

1.

Once we have an initial Relation Model Database, (After [[Conversion to Relational Schemas|Conversion]] and after an initial [[Optimizing the Conversion between an E-R Model and a Relational Model|Optimization]] if the Relation Model is based on an E-R Model diagram) we can optimize the Relational Model by combining like Relational Schemas or by decomposing large Relational Schemas.

We generally should avoid combining schemas after converting from an E-R diagram to a Relational Model. Most of the combination happened in the initial Optimization so doing more combination now can result in repetitions of data in a table.

Why we want to reducing repetition:
- Uses less storage.
- Reduces the change of an update anomaly.
- Reduces insertion issues.

So when combining schemas make sure they follow the lower rules about decomposing larger schemas. Repetition is later described by functional dependencies.

2.

When we start splitting, or decomposing schemas (splitting large tables into smaller ones), we first want to consider if the repetition found is actually [[Repetition or Co-incidence of Data in a Relational Model Table|Repetition or just a Co-incidence]].

If it is an actual instance of repetition, it can by described as a [[Functional Dependencies, Repetition in the Relational Model|Functional Dependency]]. We can use use them to decompose, or what's later called Normalizing the schema. So to know what tables need to be decomposed we will first find the functional dependencies a table (its closure), and then use that to know if it needs to be normalized or not.

Once we find the tables Functional Dependencies, we can use those to find all possible Functional Dependencies of a set of attributes, or the closure. This is further described in [[Finding all Functional Dependencies, Closure of F]], and will be used for normalization.

3.

There are 4 main Normal Forms used to normalize.
- [[First Normal Form (1NF) of Database Design|First Normal Form (1NF)]]
	- All attributes are atomic single-valued.
- [[Second Normal Form (2NF) of Database Design|Second Normal Form (2NF)]]
	- Non primary key attributes must be functionally dependent on the whole primary key.
	- (No having 2 possible primary keys in one table)
- [[Third Normal Form (3NF) of Database Design|Third Normal Form (3NF)]]
	- The 3NF actually adds onto BCNF/3.5NF.
	- Decompose the table if for all $FDs$ in $F^+$ Either:
		1) The $FD$ is trivial.
		2) The $FDs$ parameter is a superkey.
		3) The attribute set of the $FDs$ result set minus the parameter set is a member of some candidate key.
- [[Boyce-Codd Normal Form (BCNF or 3.5 NF) of Database Design|Boyce-Codd Normal Form (BCNF or 3.5 NF)]]
	- Eliminating redundancy discovered based on FDs and closures.
	- Decompose the table if for all $FDs$ in $F^+$ Either:
		1) The $FD$ is trivial.
		2) The $FDs$ parameter is a superkey.

Whenever decomposing tables, keep in mind that improper decomposition can lead to a [[Lossy vs Lossless Decomposition, Types of Table Decomposition|Loss of Information]] where the original table cannot be recreated. Called a Lossy decomposition instead of a lossless one.
