select aname from aircraft a,employee e,certified c where c.eid=e.eid and c.aid=a.aid and e.salary>80000;
select c.eid,max(A.crange) from employee e,certified c,aircraft a where e.eid=c.eid and c.aid=a.aid group by c.eid;
select distinct e.ename from employee e,certified c where e.eid=c.eid and e.salary<(select min(price) from flight f where f.ffrom="Bangalore" and f.fto="Nepal");
select max(salary) from employee where salary not in (select max(salary) from employee);
	select max(salary) from employee where salary <> (select max(salary) from employee);
