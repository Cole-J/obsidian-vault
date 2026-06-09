
organizations use to store data in file systems
now they do not

what is a file system
	process of OS -> file system -> multiple files
	controls how data is stored and retrieved

why its not used anymore
	**class activity**
		too abstract
		may have multiple different file types in the file system all for different purposes
		everything is in different in different formats or would need different processes for accessing
		slow for large scale searches
	**from the book**
		more complex over time
			suppose more data needs to be added to the file system
		data isolation
			data scattered in different files or file format
		data redundancy
			same general information needed in two files
		data inconsistency
			data may be updated in one file and not another
		difficulty in accessing data
			slow processing data across multiple files
		integrity problems
			if new constraints are added each existing file needs updating
		-
		Atomicity
			process should happen completely or not at all, file systems do not work off this binary
		-
		Concurrent Access Anomalies
			must make sure there is a system to make sure there isnt 2 accesses at the same time
		-

[[DBMS]]
