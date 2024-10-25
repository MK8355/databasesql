use ecom;
create table student1(id int, studentname varchar(20),percent int);
insert into student1 values(1,"mahesh",86);
insert into student1 values(2,"abc",20);
delimiter $$
create procedure studentresult(IN studentid int, OUT result varchar(20))
begin 
declare per int default 0;
select percent  into per from student1 where id = studentid;
if per>35 then 
   set result = "pass";
else
   set result = "fail";
end if;
end $$

call studentresult(1,@outputdata);
select @outputdata