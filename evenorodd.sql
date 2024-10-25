use ecom;
delimiter $$
create procedure num(IN n  int, OUT result varchar(20))
begin 

if (n % 2 =0) then
   set result = "even";
else 
   set result = "odd";
end if;
end $$

call num(7,@output);
   select @output;
