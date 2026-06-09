
Lossy Decomposition: natural join of decomposed tables DOESN’T recreate the original table.
Lossless Decomposition: natural join of decomposed tables recreates the original table.

Lossy: Name being used in Employee 2 as a primary key is causing a natural join of two sub tables to not recreate their initial table.
![[Pasted image 20260603190755.png]]

Lossless: {Name, Price} and {Name, Category} are both primary keys.
![[Pasted image 20260603190822.png]]