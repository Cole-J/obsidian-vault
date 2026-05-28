[[DBMS]]

Users and Interfaces (top part)
	native users (web users), sees application interfaces
	application programmers, has write permissions, application programs
	sophisticated user (analyst), query tools
	database admin, admin tools

only the application programmers have the write permission, the rest can only use

Middle Part of the BDMS
	query processor
		query: A statement requestion information
		represented by database language (think [[SQL]])
		Storage manager
			file manager
				manages space allocation on disk storage
			buffer manager
				fetches data from disk storage into main memory
				decides what data to cache in main memory
			authorization and integrity manager
				checks if users have authority / permission to access data
				checks if integrity constraint are satisfied
			transaction manager
				transaction: A unit of program that accesses and update data items
				ensures [[ACID]] properties

Disk Storage (bottom part)
	the place the data is stored
	Indices
	Data Directory (Metadata or data about the data)
	Statistical Data
	DBMS hides details of how data is stored and maintained
		important
			[[Data Abstraction]]
			