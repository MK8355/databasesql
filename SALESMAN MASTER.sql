CREATE TABLE Salesman_Master (
 SALESMANNO varchar(6) PRIMARY KEY  ,
 SALESMANNAME varchar(20) Not Null,
 ADDRESS1 varchar(30) Not Null,
 ADDRESS2 varchar(30) ,
 CITY varchar(20),
 PINCODE int(8),
 STATE varchar(20),
 SALAMT decimal(8,2) Not Null ,
 TGTTOGET decimal (6,2) Not Null,
 YTDSALES decimal(6,2) Not Null,
 REMARKS varchar(60));
 
 INSERT INTO Salesman_Master values(15,"Mahesh","Vashi","Saurabh","MUMBAI",400071,"MAHARASTRA",45.5,45.6,76.6,"VERY GOOD PRODUCT AND VERY USE FULL");
