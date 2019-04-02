select s.stud_name,m.mem_no from student s,membership m where s.stud_no=m.stud_no;
select i.iss_date,i.iss_no,s.stud_name,b.book_name from iss_rec i,student s,book b,membership m where i.mem_no=m.mem_no and m.stud_no=s.stud_no and i.book_no=b.book_no;
select s.stud_no,count(i.book_no) from student s,membership m,book b,iss_rec i where s.stud_no=m.stud_no and b.book_no=i.book_no amd i.mem_no=m.mem_no group by s.stud_no;
select book_name from book where book_no in (select book_no from iss_rec where mem_no in (select mem_no from membership where stud_no in(select stud_no from student where stud_no=5)));
create view list as (select i.iss_no,i.iss_date,s.stud_no,b.book_name from student s,membership m,book b,iss_rec i where s.stud_no=m.stud_no amd b.book_no=i.book_no and i.mem_no=m.mem_no);
	select * from list;