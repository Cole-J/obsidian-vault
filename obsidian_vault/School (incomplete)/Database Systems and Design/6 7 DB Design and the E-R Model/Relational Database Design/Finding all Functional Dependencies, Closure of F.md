
Requires knowledge of [[Functional Dependencies, Repetition in the Relational Model|Functional Dependencies (FD)]].

Notation:
- $FD$ is a specific Functional Dependency.
- $F$ is a set of Functional Dependencies (usually given initially).
- $F^+$ is a set of all $FDs$ that can be inferred from $F$, also called the closure of $F$.

A quick formula for the total number of $FDs$ that are within the set $F^+$ is:
- $2^n-1$ with n representing the number of columns of the table that F is derived from.
- Notes that due to the definition of $FDs$ in $F$, this is also the number of possible superkeys in the initial table.

The formula for computing the closure of $F$, otherwise known as $F^+$, is as follows:
- Notes:
	- Remember that $F$ is a set of $FDs$.
	- $F^+$ is equivalent to $F$, as it contains the addition $FDs$ that are only implicit to $F$.
- The closure of a set of attributes $X$, with respect to $F$, denoted $X^+$
1) The very first $FD$ in $X^+$ is the attribute set of $F$ itself. (not the function but the attribute)
2) Repeat the following until $X^+$ stops changing
	1) If the function dependency of {some subset of X} $\rightarrow$ C is in F, add C to $X^+$
- If you are computing $F^+$ its the explicit of $F$, but you may not just be calculating the expansion of the function, $X^+$ is the closure of any set $X$.

Some examples:
1) [[Simple example of FD, F, and F+]]
2) [[More generalized example of FD, F, X+, along with superkeys]]

In conclusion, an FD uniquely identifies values of certain attributes. A closure is a superkey if it contains all the attributes of the table. The the second example above.