
insert into table course value('CS-330', 'database systems', 'comp sci', 4);

value() must have the same number of args as the tuple is expecting, will throw error if not

or

insert into course(course_id, title, dept_name, credits) value('CS-330', 'database systems', 'comp sci', 4);

value() must have the same number of args as the course constructor but the constructor can have a smaller tuple than the table expects