
Notation:
- $FD$ is a specific Functional Dependency.
- $F$ is a set of Functional Dependencies (usually given initially).
- $F^+$ is a set of all $FDs$ that can be inferred from $F$.

A quick formula for the total number of $FDs$ that are within the set $F^+$ is:
- $2^n-1$ with n representing the number of columns (attributes) of the table.


// this is probably wrong
// check bookmark bar for closure formula
The formula for computing the closure of $F$, otherwise known as $F^+$, is as follows:
1) Start with $F^+=$ {empty set} and F.
2) Add the function parameter attribute sets of $F$ to $F^+$
	- Add the attribute set {A} to $F^+$ iff the $FD$, {A} $\rightarrow$ {B} exists in $F$.
	- I am using the term parameter to refer to the 'Function(Parameter)' relation.
3) Add the function result attribute sets of $F$ to $F^+$
	- Add the attribute set {B} to $F^+$ iff the $FD$, {A} $\rightarrow$ {B} exists in $F$.
	- I am using the term result to refer to 'Result = Function(Parameter)'
4) Repeat until $F^+$ stops changing:
	1) d




[[Simple example of FD, F, and F+]]