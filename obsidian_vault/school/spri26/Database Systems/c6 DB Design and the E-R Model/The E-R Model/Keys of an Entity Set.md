
Similar concept to keys in the relational database model.

Primary Keys are the Attribute of an Entity Set that distinguishes that Entity from all others in the set, while also not being a composition, not null.

A quick way to help choose Primary Keys when discussing [[Relationship and Relationship Sets|Relationship Sets]] is to look at the "Many" side of the relation. If its a One to One, then choose a primary key in either table, however if its a One to Many, choosing the primary key of the Many side as the primary key for the Relationship Set ensures there is distinct instances.

Foreign Keys are a primary key in a different Entity Set.