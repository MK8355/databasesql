use ecom;
delimiter $$
create procedure LoopDemo()
begin 
     declare x int;
     declare str varchar(255);
     
     set x = 1;
     set str = '';
     
     loop_label: loop
          if x > 10 then 
           leave loop_label;
	end if;
    
    set x = x + 1;
    if (x mod 2) then
     iterate loop_label;
	else
      set str = concat(str,x,',');
	end if;
    end loop;
    select str;
end $$
delimiter ;

call LoopDemo();
      
     
     
     