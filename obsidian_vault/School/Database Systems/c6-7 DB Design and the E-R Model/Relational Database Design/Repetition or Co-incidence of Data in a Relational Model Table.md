
![[Pasted image 20260603185301.png]]

If repetition of data is found, it might actually be a co-incidence that the data is repeated. Say if there was another variation of the 'Comp. Sci.' dept_name with a budget of not 100,000 then it would be a Co-incidence and not actually repetition.

In this case, its more than likely repetition, and the inst_dept table should be split into an instructor and department table  with dept_name being a foreign key in the instructor table.