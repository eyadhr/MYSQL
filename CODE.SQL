WORKTASK 01:

use mall;
create table Customer(
	customer_id int,
	cust_name nvarchar(40),
        city nvarchar(40),
	grade int,
	salesman_id int);

insert into Customer(customer_id,cust_name,city,grade,salesman_id)
value(3002, 'Nick Rimando','New York' ,'100','5001'),
	   (3007, 'Brad Davis','New York' ,'200','5001'),
     (3005, 'Graham Zusi','California' ,'200','5002'),
     (3008, 'Julian Green','London','300','5002'),
     (3004, 'Fabian Johnson','Paris' ,'300','5006'),
     (3009, 'Geoff Cameron', 'Berlin' ,'100','5003'),
     (3003, 'Jozy Altidor', 'Moscow' ,'200','5007'),
     (3001, 'Brad Guzan', 'London' ,'0','5005');


Write a query statement to display all customers in New York who have a grade value above 100: 

select * from customer
where (city = 'new York' ) and (grade > 100 );






Write a SQL statement to display all customers, who are either belongs to the city New York or had a grade above 100:

select * from customer
where (city = 'new York' ) or (grade > 100 );


Write a SQL statement to display all the customers, who are either belongs to the city New York or not had a grade above 100:

select * from customer
where (city = 'new York' ) or (grade < 100 );



Write a SQL query to display those customers who are neither belongs to the city New York nor grade value is more than 100:

select * from customer
where (city = 'new York' ) and (grade < 100 );

link GYAZO: https://gyazo.com/f1e143e926da4d8154b452b60e3dddc1
--------------------------------------------------------------------------------------------------------------------------------------

WORKTASK 04:

use homework ;
create table author (
author_id INT (11),
name varchar(45),
email varchar(45),
primary key (author_id)
);
CREATE TABLE book (
book_ID int NOT NULL,
title varchar(128),
description varchar(512),
published DATE,
author_id int (11),
PRIMARY KEY (book_ID),
FOREIGN KEY (Author_id) REFERENCES
author(author_id)
);
create table departments (
dept_id INT,
dept_name varchar(45),
primary key (dept_id)
);
CREATE TABLE employees (
emp_id int NOT NULL,
emp_name varchar(55),
hire_date date,
salary int,
dept_id int,
PRIMARY KEY (emp_id),
FOREIGN KEY (dept_id) REFERENCES
departments(dept_id)
);
create table course (
courseID nvarchar(20) PRIMARY KEY,
courseName nvarchar(20),
unique (courseName)
);
create table class (
StudentID nvarchar(20) PRIMARY KEY,
FirstName nvarchar(20) not null,
LastName nvarchar(20) not null,
courseID nvarchar(20),
FOREIGN KEY (courseID) REFERENCES
course(courseID)
);
insert into course (courseID,courseName)
values ('A004','Accounts'),
('C002','Computing'),
('P301','History'),
('S042','Short Course');
insert into class
(StudentID,FirstName,LastName,courseID)
value ('L0002345','Jim','Black','C002'),
('L0001254','James','Harradine','A004'),
('L0002349','Amanda','Holland','C002'),
('L0001198','Simon','MaCloud','S042');
select * from course;
select * from class;

LINK PDF: file:///C:/Users/topto/Downloads/MYSQL4%20(3).pdf
Link GYAZO: https://gyazo.com/599573cf98ecda39838b4878d1858869
Link GYAZO: https://gyazo.com/6bfb1c95259b09cb787b5cd4da1f224f
Link GYAZO: https://gyazo.com/6d288107c39011272291f0b4f9996bcb
Link GYAZO: https://gyazo.com/397c45d4d2991dbd500118dfd2bcb921
----------------------------------------------------------------------------------------------------------------------------------------

WORKTASK 05:

create database classtask ;
use classtask ;
create table Customer (
customerId int primary key Auto_increment,
companyName nvarchar (11),
contactName varchar (45),
ContactTitle varchar (45),
address varchar (128) NOT NULL,
city varchar (255),
region varchar (20) DEFAULT 'US' ,
postalCode int ,
Country nvarchar (50),
phone int Unique ,
fax nvarchar (255)
);
create table ordre (
OrderId int primary key ,
CustomerID int ,
EmployeeId int ,
OrderDate date ,
RequiredDate date ,
ShipVia varchar(255) DEFAULT 'amazon' ,
Freight nvarchar(45) ,
ShippedDate date,
ShipName nvarchar(255) ,
Shipaddress nvarchar(255) ,
Shipcity nvarchar(255) ,
ShipRegion nvarchar(255) ,
ShipPostalCode int ,
ShipCountry nvarchar(255) ,
foreign key (CustomerId) references Customer (CustomerId)
);

Link GYAZO: https://gyazo.com/323455cc404fe141877dad5124323560

-----------------------------------------------------------------------------------------------------------------------------------------------------------------

WORKTASK 06/04:

create database Info;
use Info;
select * from demo;

select avg(age)
from demo
where age > 30;

select avg(height)
from demo
where id_continent in ('eu');

select min(height) as MinHeight
from demo;

select max(height) as MaxHeight
from demo;

select count(freelance) as amount_of_freelancers
from demo
where freelance = 1;

select * from demo
where name like 's%'
limit 3;

select * from demo
where id_country in ('ca','uk')
limit 20;

select pow(2,3);
select pow(6,2);
select pow(4,-4);

select sqrt(9);
select sqrt(144);
select sqrt(64);

select abs(-648);
select abs(-974);
select abs(-34);

select round(3.214);
select round(-4.35);
select round(1.3336);

LINK GYAZO: https://gyazo.com/a9bb7cc86730ed76f6dcdcffced02838
LINK GYAZO: https://gyazo.com/60dbeb91015a0ab40151b86fba56c26c
LINK GYAZO: https://gyazo.com/ae146897927eaf26bb16aa2772fa9ec9

-------------------------------------------------------------------------------------------------------------------------------------

WORKTASK 07:

use demo ;
SELECT upper(name) AS UppercaseName, lower(firstname) AS LowercaseFirstname FROM demo;

SELECT REPLACE(email,'@','$') AS New_Email ,id, NAME FROM demo;

SELECT DATABASE() , USER(), version() ;

SELECT curtime();

SELECT curdate();

SELECT dayofmonth('2043-01-20');

SELECT dayofyear('1594-05-10');

SELECT dayofweek('1997-07-31');

SELECT substring(website, -4) FROM demo;

SELECT firstname, lastvisit FROM demo where lastvisit between '2012-01-01' and '2012-02-01';

GYAZO: https://gyazo.com/d5eb388277401edca52bced29a69528d
GYAZO: https://gyazo.com/f2ce6fa7ebf6d744be6451e96808db60
GYAZO: https://gyazo.com/b495880737a82f38a7a768f6b243404a
GYAZO: https://gyazo.com/a4083a0b2ed2bc4774abe5fd883bca10
GYAZO: https://gyazo.com/69d8e91184e960bb02c6502a228ca010

----------------------------------------------------------------------------------------------------------------------------------------

WORKTASK 08:

ANSWER:

create database mydb;
USE mydb;

CREATE TABLE Customer(
	customer_id int primary key,
    cust_name nvarchar(20) not null,
    city nvarchar(20),
    grade float,
    salesman_id int
);

insert into Customer(customer_id,cust_name,city,grade,salesman_id)
	   value(3002, 'Nick Rimando','New York' ,'100','5001'),
			(3007, 'Brad Davis','New York' ,'200','5001'),
            (3005, 'Graham Zusi','California' ,'200','5002'),
            (3008, 'Julian Green','London','300','5002'),
            (3004, 'Fabian Johnson','Paris' ,'300','5006'),
            (3009, 'Geoff Cameron', 'Berlin' ,'100','5003'),
            (3003, 'Jozy Altidor', 'Moscow' ,'200','5007'),
            (3001, 'Brad Guzan', 'London' ,'','5005');

SELECT * FROM Customer;


CREATE TABLE Orders(
	ord_no int primary key,
    purch_amt float not null,
    ord_date date,
    customer_id int,
    salesman_id int
);


INSERT INTO Orders(ord_no,purch_amt,ord_date,customer_id,salesman_id)
VALUES (70001,150.5,2012-10-05,3005,5002),
	   (70009,270.65,2012-09-10,3001,5005),
       (70002,65.26,2012-10-05,3002,5001),
	   (70004,110.5,2012-08-17,3009,5003),
       (70007,948.5,2012-09-10,3005,5002),
	   (70005,2400.6,2012-07-27,3007,5001),
       (70008,5760,2012-09-10,3002,5001),
	   (70010,1983.43,2012-10-10,3004,5006),
       (70003,2480.4,2012-10-10,3009,5003),
	   (70012,250.45,2012-06-27,3008,5002),
       (70011,75.29,2012-08-17,3003,5007),
	   (70013,3045.6,2012-04-25,3002,5001);
-- 1. Write a SQL statement which selects the highest grade for each of the cities of the customers.

SELECT city, Max(grade)
FROM Customer
GROUP BY city;

-- 2. Write a SQL statement to find the highest purchase amount ordered by the each customer with their ID and highest purchase amount.

SELECT customer_id, MAX(purch_amt)
FROM Orders
GROUP BY customer_id;

USE mydb;

-- 3. Write a SQL statement to find the highest purchase amount ordered by the each customer on a particular date with their ID, order date and highest purchase amount.

SELECT customer_id, ord_date, MAX(purch_amt)
FROM Orders
GROUP BY customer_id, ord_date;

-- 4. Write a SQL statement to find the highest purchase amount on a date '2012-08-17' for each salesman with their ID.

SELECT customer_id, MAX(purch_amt)
FROM Orders
WHERE ord_date = '2012-08-17'
GROUP BY salesman_id;

-- 5. Write a SQL statement to find the highest purchase amount with their ID and order date, for only those customers who have highest purchase amount in a day is more than 2000.

SELECT customer_id, ord_date, MAX(purch_amt)
FROM Orders
GROUP BY customer_id, ord_date
HAVING MAX(purch_amt) > 2000.00;

-- 6. Write a SQL statement to find the highest purchase amount with their ID and order date, for those customers who have a higher purchase amount in a day is within the range 2000 and 6000.

SELECT customer_id, ord_date, MAX(purch_amt)
FROM Orders
GROUP BY customer_id, ord_date
HAVING MAX(purch_amt) BETWEEN 2000 AND 6000;

-- 7. Write a SQL statement to find the highest purchase amount with their ID and order date, for only those customers who have a higher purchase amount in a day is within the list 2000, 3000, 5760 and 6000.

SELECT customer_id, ord_date, MAX(purch_amt)
FROM Orders
GROUP BY customer_id, ord_date
HAVING MAX(purch_amt) IN(2000, 3000, 5760, 6000);

-- 8. Write a SQL statement to find the highest purchase amount with their ID, for only those customers whose ID is within the range 3002 and 3007.

SELECT customer_id, MAX(purch_amt)
FROM Orders
WHERE customer_id BETWEEN 3002 AND 3007
GROUP BY customer_id;
USE mydb;

-- 9. Write a SQL statement to display customer details (ID and only highest purchase amount) whose IDs are within the range 3002 and 3007 and highest purchase amount is more than 1000.

SELECT customer_id, MAX(purch_amt)
FROM Orders
WHERE customer_id BETWEEN 3002 AND 3007
GROUP BY customer_id
HAVING max(purch_amt) > 1000;

-- 10. Write a SQL statement to find the highest purchase amount with their ID, for only those salesmen whose ID is within the range 5003 and 5008.

SELECT salesman_id, MAX(purch_amt)
FROM Orders
GROUP BY customer_id
HAVING salesman_id BETWEEN 5003 AND 5008;

GYAZO: https://gyazo.com/48be263532ff275dd9052d272dbce5c0



