
Using the Table(P, Q, R, S, T, U) and the set of $F$:
- {P, Q} $\rightarrow$ {R}
- {P, S} $\rightarrow$ {T}
- {Q} $\rightarrow$ {S}
- {P, U} $\rightarrow$ {Q}

The closure {P, Q}$^+$ is:
1) {P, Q}$^+$ = {P, Q}
2) {P, Q}$^+$ = {P, Q, R} due to the function {P, Q} $\rightarrow$ {R}
3) {P, Q}$^+$ = {P, Q, R, S} due to the function {Q} $\rightarrow$ {S}
4) {P, Q}$^+$ = {P, Q, R, S, T} due to the function {P, S} $\rightarrow$ {T}
5) No more can be added which is not already in the set.

The closure {P, U}$^+$ is:
1) {P, U}$^+$ = {P, U}
2) {P, U}$^+$ = {P, U, Q} as {P, U} $\rightarrow$ {Q}
3) {P, U}$^+$ = {P, U, Q, R} as  {P, Q} $\rightarrow$ {R}
4) {P, U}$^+$ = {P, U, Q, R, S} as {Q} $\rightarrow$ {S}
5) {P, U}$^+$ = {P, U, Q, R, S, T} as {P, S} $\rightarrow$ {T}
6) No more can be added which is not not already in the set.

{P, Q}$^+$ is NOT a superkey as its set is not equal to the Table. The attribute U is missing.
{P, U}$^+$ IS a superkey, as every attribute of the Table is present in {P, U}$^+$.
