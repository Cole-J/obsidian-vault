
![[Pasted image 20260603193218.png]]

We are given a set $F$ describing the functional dependencies of the above table
- $F$ = {name}$\rightarrow${color}, {category}$\rightarrow${dept}, {color, category}$\rightarrow${price}

Using the formula stated in the previous note we know that there are 31 $FDs$ in the set $F^+$.
(the formula being $2^5-1=31$, $5$ because we have 5 columns)

![[Pasted image 20260603194105.png]]

In this case we are finding the closure of the attributes of the set of functional dependencies. It is simpler to think of $F$ as the set of functional dependencies acting on $F^+$ with them not being directly related, even through in this case they are.

To explain the above,
- $F^+$ starts with only {{name}, {category}, {color, category}}
- Focusing just on {name}, in $F$ the function {name} $\rightarrow$ {color} exists so color is added to $F^+$
	- The same happens with {dept} and {price}
- Now $F^+$ = {{name}, {color}, {category},  {dept}, {price}, {color, category}}, however
	- {name} $\rightarrow$ {color} also implies {name} $\rightarrow$ {name, color}, and this continues

A simpler example is the closure of {name, category}, notated {name, category}$^+$.
- {name, category} implies itself, or {name, category} $\rightarrow$ {name, category}
- {name} $\rightarrow$ {color} implies {name, category}  $\rightarrow$ {name, category, color}
- {category}  $\rightarrow$ {dept} implies {name, category, color}  $\rightarrow$ {name, category, color, dept}
- {color, category}  $\rightarrow$ {price} implies {name, category, color, dept}  $\rightarrow$ {name, category, color, dept, price}
- Adding many more does not change {name, category}$^+$ as that is all attributes available in this case.
In conclusion:
- {name, category}$^+$ = {name, category, color, dept, price}
- Or the $FD$ {name, category} $\rightarrow$ {name, category, color, dept, price} exists