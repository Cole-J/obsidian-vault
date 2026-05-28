
delete from instructor;
	deletes table contents but retains table

drop table instructor;
	deletes both table and its contents

selective deletions
	delete instructors from the finance dept
		delete from instructor where dept_name = finance

delete all instructors whose salary is less than average salary of instructors
	delete from instructor where salary < (select avg(salary) from instructor)
	cannot do
	delete from instructor where salary < avg(salary)