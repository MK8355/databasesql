USE ECOM;
CREATE TABLE EMP(
ID INT PRIMARY KEY,
NAME VARCHAR (20),
EMAIL VARCHAR (20),
CITY VARCHAR (20),
DEPT VARCHAR (20),
AGE INT);

INSERT INTO EMP VALUES (1,"MAHESH", "mahesh03@GMAIL","MUMBAI", "IT",20);
INSERT INTO EMP VALUES (2,"PRANALV", "PRANAV3@GMAIL","MUMBAI", "IT",20); 
INSERT INTO EMP VALUES (3,"YASH ", "YASH@GMAIL","DELHI", "IT",22); 
INSERT INTO EMP VALUES (4,"RAJ", "ATHARVA@GMAIL","CHENNAI", "IT",23); 
INSERT INTO EMP VALUES (5,"SANYOG", "SANYOGI@GMAIL","PUNE", "BANKING",25); 
INSERT INTO EMP VALUES (6,"AMIT ", "AMIT@GMAIL","BANGLORE", "IT",28); 
INSERT INTO EMP VALUES (7,"SANKET", "SANKET@GMAIL","PUNE", "BANKING",21); 
INSERT INTO EMP VALUES (8,"RAM", "RAM04@GMAIL","PUNE", "BANKING",21); 
 
 select * FROM EMP;
 SELECT ID, NAME, DEPT FROM EMP;
 SELECT * FROM EMP
 WHERE DEPT='IT';
SELECT * FROM EMP
where CITY='MUMBAI' AND DEPT='IT';
SELECT * FROM EMP
WHERE DEPT='IT' OR CITY='MUMBAI';
SELECT * FROM EMP
WHERE AGE>20;
SELECT distinct NAME FROM EMP;

SELECT * FROM EMP LIMIT 2;
SELECT * FROM EMP ORDER BY NAME DESC;

SELECT * FROM EMP WHERE CITY="DELHI" OR CITY="SURAT";
SELECT * FROM EMP WHERE CITY IN('DELHI', 'SURAT','MUMBAI','BANGLORE');

SELECT * FROM EMP WHERE AGE BETWEEN 20 AND 21;