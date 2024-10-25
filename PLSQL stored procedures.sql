use ecom;
delimiter $$

create procedure fetchcust(IN custid INT)
begin

select * from customer where id = custid;

end $$

call fetchcust(1);