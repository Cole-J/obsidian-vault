
Make sure to first understand [[Finding all Functional Dependencies, Closure of F|closure]].

Consider the Table R(A, B, C, D, E) and its functional dependences:
- $AB \rightarrow C$ 
- $CD \rightarrow E$ 
- $C \rightarrow A$
- $C \rightarrow D$
- $D \rightarrow B$

How would we find ALL candidate keys?

We know that there are 31 possible super keys as $2^5-1=31$ (notice that R has 5 attributes and again check the closure note for the [[Finding all Functional Dependencies, Closure of F|formula used here]]), so there are 31 different super keys, or subsets for the set {A, B, C, D, E}. 

(Super keys of a table can be described by a subset of the set of attributes of the table, so all super kyes is just all the subsets)

To find candidate keys, find the closure of each super key of the initial table. We can start with the first 5, in this case the super keys A, B, C, D, and E.

- $A \rightarrow A$
- $B \rightarrow B$
- $C \rightarrow CADBE$ (possible candidate key as C can describe all other attributes)
- $D \rightarrow DB$
- $E \rightarrow E$

C is our first candidate key found. Now repeat the process with all unique 2nd order combinations of every attribute (AB, AC, AD, AE, BC, BD, BE, CD, CE, and DE). 

However since C is a candidate key, all combinations combining C automatically cannot be candidate keys as candidate keys cannot contain another candidate key in their subset.

- $AB \rightarrow ABCDE$ (candidate key)
- $AC$ (contains C, so AC is automatically disqualified from being a candidate key)
- $AD \rightarrow ADBCE$ (candidate key)
- $BC$
- $BD \rightarrow BD$
- $BE \rightarrow BE$
- $CD$
- $CE$
- $DE \rightarrow DEB$

To summarize, to determine ALL candidate keys of a table from its attributes and functional dependencies.

1. Start with the table R, and write out EVERY combination of its attributes (all subsets / super keys). Then start from the smallest subset (the subsets containing just 1 attribute) and work towards the largest (the one subset containing all attributes).

2. For each subset, compute its closure using the tables functional dependencies. If the subset can be expanded (by the closure of its FDs) to include all attributes its a candidate key.

3. The only exception for step 2, is if the current subset has its own subset equal to another candidate key. eg it already contains a candidate key and that's why the current subset is a candidate key, not because the current super keys additional attributes are adding to the closure. 

4. Repeat 2 and 3 for all subsets.