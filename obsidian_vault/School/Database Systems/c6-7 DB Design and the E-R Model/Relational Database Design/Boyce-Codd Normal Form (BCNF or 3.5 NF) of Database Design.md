Requires knowledge of [[Finding all Functional Dependencies, Closure of F|closures]].

The schema is BCNF if for all functional dependencies $a \rightarrow b$ in $F^+$ with $F$ representing all functional dependencies of the schema EITHER:
1) $a \rightarrow b$ is [[Trivial FDs|Trivial]]. ($b$ is a subset of $a$)
2) $a$ is a superkey.

Example: in the following table there is the functional dependency:
- {dept_name} $\rightarrow$ {building, budget}
![[Pasted image 20260604192323.png]]

Since $F$ = {{dept_name} $\rightarrow$ {building, budget}}, $F^+$ = {dept_name, building, budget}

Now applying BCNF:
- $a$ = $F$ = {dep_name} and $b$ = $F^+$ = {dept_name, building, budget}
- $a \rightarrow b$,  {dep_name} $\rightarrow$ {dept_name, building, budget} is NOT trivial as $b$ is not a subset of $a$.
- $a$, {dept_name} is NOT a superkey as the ID, name, and salary attributes are not represented in its closure.

Since its not compliant with BCNF, with dept_name representing another primary key, we can split it into two new tables.

The department table is now compliant with BCNF. as its still not trivial, but dept_name is not a superkey.
![[Pasted image 20260604193236.png]]

The primary key of this new table should be the attributes of an FD that are both trivial and are a superkey.

![[Pasted image 20260604193504.png]]

As a general rule:
- T(R) is a relational schema (table), with R representing ALL attributes of R (for simplicity).
- If $a \rightarrow b$ violates BCNF, then decompose T(R) into two tables with attributes:
	1) $(a \cup b)$
	2) $(R - ( b - a))$

Remember that one of the resulting tables after the split may not be BCNF compliant, so make sure to check if further decomposition is needed. Stop decomposing when the schema is BCNF compliant or only has 2 attributes (all 2 attribute tables are BCNF compliant).

![[Pasted image 20260604194216.png]]