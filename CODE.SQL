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
     (3005, 'Graham Zusi','California' ,'200','5002')
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

https://gyazo.com/323455cc404fe141877dad5124323560



