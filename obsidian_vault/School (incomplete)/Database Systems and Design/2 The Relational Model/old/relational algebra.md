
what is relational algebra
	a set of operations on relations
	parallel to usual algebra

relational operations
	[[selection of tuples (sigma)]]
	[[projection of columns (Pi)]]
	selection and projection together
		ex: find ID and salary for instructors with salaries > $85k
			$\sigma$$_{(Salary > 85000)}$ ($\Pi$$_{(ID, Salary)}$ (Instructor))
			this is first projecting only the ID and Salary of the instructor DB
			then selecting only those from that sub DB with a salary over 85k
			-
			can be done in reverse for this example, but not in all examples.
			generally more safe to do projection first

[[joining two relations]]

