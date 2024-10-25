use ecom;
delimiter $$
create procedure studentresult1(IN studentid int, OUT result varchar(20))
begin 
declare per int default 0;
select percent  into per from student1 where id = studentid;
if (per>=80 and per <100) then 
   set result = "Grade A";
elseif(per>=60 and per <80) then 
   set result = "Grade B";
   elseif(per>=45 and per <60) then 
   set result = "Grade C";
   elseif(per>=35 and per <40) then
   set result = "Grade D";
   else
   set result ="Fail";
end if;
end $$

call studentresult1(1,@output);
      select @output;