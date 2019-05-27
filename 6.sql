select guide_name,count(*) from guide g,project p where g.guide_no=p.guide_no group by guide_name having count(*)>1;
select project_no,project_title,guide_name from project,guide where project.guide_no=guide.guide_no and project.project_domain="Cloud Computing";
update guide set guide_name="abhishek" where guide_no in(select guide_no from student where rollno="1nt14cs001");
alter table student add foreign key(guide_no) references guide(guide_no) on delete cascade;
delete from guide where guide_no=12;
create view student_project as select name,guide_name,project_title from student,guide,project where project.guide_no=guide.guide_no;
