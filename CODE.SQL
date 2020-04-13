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



