types of keys
	super key
		a set of one more more attributes that uniquely identify a tuple
		ex:
			with instructor(id, name, dept_name, salary), the super key is id or possibly name, or both
		formal def:
			suppose K is a set, if K is a super key then any superset of K is also a super key. therefor if ID is a super key {id, name} is also a super key. 
			Formula is 2^n - 1 (n is the number of attributes). In theory.
			Actual super keys set may have ones that are not specific.
	-
	Candidate key
		a special kind of super key (sometimes called minimal super key)
		any proper subset of candidate key cannot be a super key.
		-
		general idea, must be a super key set and the set must only have 1 element
		(look at class participation 2 ex)
		-
		formal def:
			proper subset of A, is the subsets of A without A itself.
			formula 2^n - 1 (n is the number of elements)
		determine candidate key ex:
			given the super key {id, name, dept_name}, how do we know if {id, name, dept_name} is a candidate key.
			-
			find all proper subsets of {id, name, dept_name}, total = 7
			empty set is it a super key =
			{id} is it a super key = yes it is, dont have to do the rest
			{name} is it a super key = 
		class participation 2 ex:
			{id} | superkey=yes | candidatekey=yes
			{name} | superkey=yes | candidatekey=yes
			{dept_name} | superkey=no | candidatekey=no
			{id, name} | superkey=yes | candidatekey=no
			{id, dept_name} | superkey=yes | candidatekey=no
			{name, dept_name} | superkey=yes | candidatekey=no
			{id, name, dept_name} | superkey=yes | candidatekey=no
	-
	primary key
		a candidate key chosen by the database designer
		-
		main key used to discriminate tuple, should be first in the tuple
	-
	foreign key
		if dept_name is a primary key in one table, and is a attribute in another, its a foreign key in that other table
		-
		one part of a tuple can be a primary key in one DB, but a foreign (present but not primary) in another