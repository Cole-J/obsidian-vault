
sql vs normal language

sql
queries are easier but some actions cannot be done within sql

real software
	one part, query or update data
	other part, written in normal language

best to use both

how to access sql from a language
2 approaches
	static, embedded sql
		preprocessor identifies sql statement at compile time, sends to DBMS, ends during compilation
	dynamic sql
		construct sql query as a string at run time, submits query, retrieves from DBMS into variables a tuple at a time (use dynamic for assignment 2)

dynamic sql standards
	API (application program interface) to interact with DB server
	ODBC
		works with c c++ c#
	JDBC
		java database connectivity, works with java

JDBC
	java api for communicating with BDMS
	supports
		query and update data
		retrieve query results
		retrieve metadata
	model for communicating with DB
		open connection
		create statement object
		execute query using statement object
		exception and error handling

JDBC code
	skipped

use prepared statement to avoid sql injection

What is SQL injection?
	when a user is given unrestricted access to some portion of a sql query allowing the user to possibly change the purpose of the query, or even append their own additional query or update data.

What we should do to avoid SQL injection in assignment 2?
	Use prepared statements to ensure the user input is treated as data and not a statement.