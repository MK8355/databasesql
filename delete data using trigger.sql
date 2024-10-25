use ecom;
create table employees(empid int primary key auto_increment, name varchar(20),designation varchar(20), salary int,  doj date);
create table resignemployees(resignid int primary key auto_increment, name varchar(20),
 designation varchar(20), salary int,  doj date, dateofresignation date);
 
 insert into employees(name, designation, salary, doj) values ("mahesh","manager",5000,'2024-04-20');
 insert into employees(name, designation, salary, doj) values ("omkar","hod",7000,'2024-08-29');

delimiter $$
create trigger resignemployees
after delete 
on employees
for each row
begin
 
 insert into resignemployees(empid, name, designation, salary, doj,dor)
 values(old.empid, old.name, old.designation, old.salary, old.doj, curdate());
 
 end;
 delete from employees where empid = 2;
