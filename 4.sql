select s.s_name,s.age from sailors s,reserves r,boats b where s.sid=r.sid and r.bid=b.bid and b.color="red" order s.age;
select s.s_name from sailors s where s.sid in (select r.sid from reserves r where r.bid=103);
	select s.s_name from sailors s where exists (select * from reserves r where r.bid=103 and r.sid=s.sid);
select s.s_name,s.age from sailors s where s.age<=all(select age from sailors);
select s.rating,avg(s.age) as average_age from sailors s group by s.rating having count(*)>1;