use eco;

create table emp1(empid int(12),empname varchar(20),designation varchar(20),salary int,email varchar(20), phoneno int(20));

insert into emp1 values (1,"prachi","it manager",6000,"p@gmil.com",456214);
insert into emp1 values (3,"mahesh","it trainer",7000,"k@gmil.com",456318);
insert into emp1 values (4,"pratik","ca trainer",8000,"p@gmil.com",467318);

select * from emp1;

create view empview1 As select empid,empname,designation,salary,email,phoneno from emp1;

select * from empview1;

use eco;
update empview1 set designation="assosiate it trainer" where empid=1;
delete from empview1 where empid=1;

select * from emp1;

create table sports(id varchar(20),empid int,sportsname varchar(20));
insert into sports values("s1",2,"cricket");
insert into sports values("s2",3,"badminton");
insert into sports values("s3",4,"tennis");
insert into sports values("s4",5,"holly ball");
insert into sports values("s5",6,"basket ball");

select *from sports;
create view empview2 As select e.empid,e.empname ,e.designation,e.salary,s.sportsname from
emp1 e join sports s on e.empid = s.empid;

select * from empview2;


use eco;
CREATE TABLE Table_A ( PK INT , Value VARCHAR(50) );

INSERT INTO Table_A (PK, Value)
VALUES(1, 'FOX');

INSERT INTO Table_A (PK, Value)
VALUES(2, 'COP');

INSERT INTO Table_A (PK, Value)
VALUES(3, 'TAXI');

INSERT INTO Table_A (PK, Value)
VALUES(6, 'WASHINGTON');

INSERT INTO Table_A (PK, Value)
VALUES(7, 'DELL');

INSERT INTO Table_A (PK, Value)
VALUES(5, 'ARIZONA');

INSERT INTO Table_A (PK, Value)
VALUES(4, 'LINCOLN');

INSERT INTO Table_A (PK, Value)
VALUES(10, 'LUCENT');


CREATE TABLE Table_B ( PK INT ,Value VARCHAR(50));

INSERT INTO Table_B (PK, Value)
VALUES(1, 'TROT');

INSERT INTO Table_B (PK, Value)
VALUES(2, 'CAR');

INSERT INTO Table_B (PK, Value)
VALUES(3, 'CAB');

INSERT INTO Table_B (PK, Value)
VALUES(6, 'MONUMENT');

INSERT INTO Table_B (PK, Value)
VALUES(7, 'PC');

INSERT INTO Table_B (PK, Value)
VALUES(8, 'MICROSOFT');

INSERT INTO Table_B (PK, Value)
VALUES(9, 'APPLE');

INSERT INTO Table_B (PK, Value)
VALUES(11, 'SCOTCH');


SELECT A.PK, A.Value AS Value_A, B.Value AS Value_B
FROM Table_A A
INNER JOIN Table_B B 
ON A.PK = B.PK;

SELECT * FROM Table_A INNER JOIN Table_B ON
Table_A.PK = Table_B.PK;

SELECT * FROM TABLE_A NATURAL JOIN TABLE_B;

SELECT * FROM Table_A INNER JOIN Table_B ON
Table_A.PK > Table_B.PK;



use eco;
create table branch (branchid int,branchname varchar(20));

insert into branch values(1, "vashi");
insert into branch values(2, "borivali");
insert into branch values(3, "thane");
insert into branch values(4, "andheri");
insert into branch values(5, "kalyan");

use eco;
create table fooditems (foodno int,items varchar(20));

insert into fooditems values(1, "samosa");
insert into fooditems values(2, "sabudana vada");
insert into fooditems values(3, "fruti");
insert into fooditems values(4, "mava");
insert into fooditems values(5, "laddu");

select b.branchname,f.items from branch b cross join fooditems f;




use eco;
create table employee (employeeid int(12),employeename varchar(20),managerid int(20));

insert into employee values(1,"ami",3);
insert into employee values(2,"ritu",3);
insert into employee values(3,"geeta",4);
insert into employee values(4,"sunita",null);
insert into employee values(5,"ram",4);

select e.employeename As "emp name", m.employeename As "manager name" from employee e join employee m on e.employeeid=m.managerid;