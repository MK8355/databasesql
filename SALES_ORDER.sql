CREATE TABLE Sales_Order(
 ORDERNO varchar(6) Primary Key ,
 CLIENTNO varchar(6),
 ORDERDATE date Not Null,
 DELYADDR varchar(25),
 SALESMANNO varchar(6),
 DELYTYPE char(1),
 BILLYN char(1),
 DELYDATE date,
 ORDERSTATUS varchar(10));
 
INSERT INTO  Sales_Order values( 11,"MAHESH",('2023-03-20'),"SGDYSG","PANU2","G", "f",('2023-4-30'),"IN PROCESS");
INSERT INTO  Sales_Order values( 12,"MAHESH",('2023-03-20'),"SGDYSG","PANU2","G", "f",('2023-4-30'),"IN PROCESS");
INSERT INTO  Sales_Order values( 13,"MAHESH",('2023-03-20'),"SGDYSG","PANU2","G", "f",('2023-4-30'),"IN PROCESS");