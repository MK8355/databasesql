use ecom;

create table address (id varchar(20) primary key , city varchar(20), state varchar(20), country varchar(20));
use ecom;
create table student (id int primary key auto_increment, name varchar (20) not null, email varchar (20) unique,  age int, addressid varchar (20),course varchar (20) default 'BCA', foreign key(addressid) references address (id));

INSERT INTO address values ('a1', 'mumbai','mah', 'india'); 
INSERT INTO address values ('a2','surat','guj','india');
INSERT INTO address values ('a3', 'indore', 'mp', 'india');

use ecom;
create table student (id int primary key auto_increment, name varchar (20) not null, email varchar (20) unique,  age int, addressid varchar (20),course varchar (20) default 'BCA', foreign key(addressid) references address (id));

use ecom;
create table student(id varchar(20) primary key ,city varchar(20), state varchar(20),
country varchar(20));

insert into student(name,email,age,addressid,course) values('pranali','abc1@gmail',21,'a2','bba');

insert into student(email,age,addressid,course) values('abc2@gmail','23','a7','bca');
