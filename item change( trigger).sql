use ecom;
create table item(itemid int primary key auto_increment, name varchar(20));
create table item_change(changeid int primary key auto_increment,
 item_id int, changetype varchar(20),
 foreign key(item_id) references item(itemid));

delimiter $$
 create trigger iteminsert
 after insert
 on item 
 for each row
 begin 
 insert into item_change (item_id,changetype) values(New.itemid,"insert");
 
 end;
 
 insert into item(name) values("iphone");
