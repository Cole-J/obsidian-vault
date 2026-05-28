
update instructor set salary = salary \* 1.5

multiple things needed to be updated
use case

update inst set salary = (case when salary <= 10000 then salary * 1.01 else salary * 1.03 end);
can have multiple when then lines