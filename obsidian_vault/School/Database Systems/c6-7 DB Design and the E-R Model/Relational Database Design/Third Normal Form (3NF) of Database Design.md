
Requires knowledge of [[Boyce-Codd Normal Form (BCNF or 3.5 NF) of Database Design|BCNF/3.5NF]] as 3NF is simply an expansion adding one more exception.

For all $FDs$ in $F^+$, represented by $a \rightarrow b$, at least one of the follow is true for the table to be 3NF compliant.
1) $a \rightarrow b$ is [[Trivial FDs|Trivial]] ($b$ is a subset of $a$).
2) $a$ is a superkey.
3) $(b - a)$ is a member of some candidate key of the table.
	- Or the attribute set $(b-a)$ is a subset of any of the tables candidate keys (which are also attributes sets).
	- (remember $a$ and $b$ are attribute sets and minus is the set difference)