
basic structure of sql queries
	[[select]]
	[[from]]
	[[where]]

SQL is based on [[relational algebra]]
	selection - where
	projection - select
	join or product - from

how a sql query works
	takes relations as input mentions in **from** clause
	operates on relation specified in **where** clause
	operates on **select** clause to select attributes
	produces a relation as a result

duplicate tuples in sql
	duplicates are not allowed in sets
	however removing all would be time consuming so sql allows duplicates in its results
	-
	to remove duplicates, use distinct keyword
	ex:
		select distinct dept_name from instructor;

simple ex:
	"find the names of all instructors"
	relational algebra
		pi_(name) (instructor)
	sql
		select name from instructor;

can get specific attribute entries with dot product
	deptartment.dept_name = instructor.dept_name

queries on multiple relations
	"find names of all inst"
