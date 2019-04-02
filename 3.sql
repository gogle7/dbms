select s.s_name,s.age from Sailors s,reserves r,Boats b where s.sid=r.sid and r.bid=b.bid and b.color="red" order by s.age;
select s.s_name from Sailors s where s.sid in(select r.sid from Reserves r where r.bid=3);
	select s.s_name from Sailors s where exists(select * from Reserves r where r.bid=3 and r.sid=s.sid);
select s.s_name,s.age from Sailors s where s.age<=ALL(select age from Sailors);
select s.rating, avg(s.age) as average_age from Sailors s group by s.rating having count(*)>1;
