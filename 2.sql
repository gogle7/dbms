select e.f_name,e.l_name,1.1*e.salary as increased_sal from employee as e,works_on as w,project as p where e.ssn=w.ssn and w.p_number=p.p_number and p.p_name="IOT";
select f_name,l_name from employee where ssn not in(select ssn from dependent where ssn=super_emp_id);
	select f_name,l_name from employee where not exists(select * from department where ssn=super_emp_id);
select f_name,l_name,address from employee e,department d where d_name="CSE" and d.d_no=e.d_no;
select d.d_name,e.l_name,e.f_name,p.p_name from department d,employee e,works_on w,project p where d.d_no=e.d_no and e.ssn=w.ssn and w.p_number=p.p_number order by d.d_name,e.l_name,e.f_name;

