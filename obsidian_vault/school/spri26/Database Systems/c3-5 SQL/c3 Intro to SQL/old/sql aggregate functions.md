
Input: a collection of values
Output: a single value

5 built in SQL aggregate functions
	average: avg
		ex: select avg(salary) from instructor where dept_name="comp sci";
		ex: select \* from instructor where salary < (select avg(salary) from instructor);
	minimum: min
	maximum: max
	total: sum
	count: count
		ex: select count(\*) as total_rows from courses