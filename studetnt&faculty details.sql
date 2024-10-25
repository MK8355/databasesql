use eco;

create table student_details(student_rollno int(20),stu_name varchar(20),stu_marks int(20),stu_city varchar(20));

insert into student_details values(1001,"akhil",85,"agra");
insert into student_details values(1002,"balram",78,"delhi");
insert into student_details values(1003,"bheem",87,"gurgaon");
insert into student_details values(1004,"chetan",95,"noida");
insert into student_details values(1005,"diksha",99,"agra");
insert into student_details values(1006,"raman",90,"gaziabad");
insert into student_details values(1007,"sheetal",68,"delhi");

select * from student_details where stu_marks > (select Avg (stu_marks)from student_details);




use eco;

create table faculty_details(faculty_id int(20), name varchar(20),dept_id int(20),address varchar(20));

insert into faculty_details values(101,"bheem",1,"gurgaon");
insert into faculty_details values(102,"chetan",2,"gurgaon");
insert into faculty_details values(103,"diksha",null,"gurgaon");
insert into faculty_details values(104,"raman",4,"gurgaon");
insert into faculty_details values(105,"yatin",3,"gurgaon");
insert into faculty_details values(106,"anuj",null,"gurgaon");
insert into faculty_details values(107,"rakes",5,"gurgaon");

use eco;
create table department(dept_id int(20), faculty_id int(20),dept_name varchar(20));

insert into department values(1,101,"bca");
insert into department values(2,102,"b.tech");
insert into department values(3,105,"bba");
insert into department values(4,104,"mba");
insert into department values(5,107,"mca");

select * from department where faculty_id in (select faculty_id from faculty_details where address in('noida','gurgaon'));