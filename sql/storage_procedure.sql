CREATE DATABASE STORAGE_PROCEDURE;
USE [STORAGE_PROCEDURE];

CREATE TABLE salesman (
salesman_id INT NOT NULL,
name VARCHAR(20) NOT NULL,
city VARCHAR(20) NOT NULL,
commision FLOAT NOT NULL
);

INSERT INTO salesman VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5003, 'Luson Hen', 'San Jose', 0.12),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'MC Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13);

SELECT * FROM salesman;

------------------------------storage procedure with no parameters------------------

CREATE PROCEDURE dbo.SelectAllSalesmen
AS
SELECT * FROM salesman
Return

Exec SelectAllSalesmen;

-----------------------procedure with one parameter---------------

Create Procedure dbo.SelectSalesman_withId
(
@id int
)
As
select * from salesman where salesman_id = @id
Return

Exec SelectSalesman_withId @id=5006;

-------------------procedure with multiple parameters----------------------------

Create Procedure dbo.AddToSalesman
(
@id int,
@name varchar(20),
@city varchar(20),
@commission float
)
As
Insert into salesman values
(@id, @name, @city, @commission)
return

Exec AddToSalesman @id = 5008, @name = 'Sravanthi', @city= 'London', @commission = 0.11;

------------------------------------Default parameter----------------

CREATE TABLE customer(
customer_id INT NOT NULL,
cust_name VARCHAR(20) NOT NULL,
city VARCHAR(20) NOT NULL,
grade INT,
salesman_id INT NOT NULL
);

INSERT INTO customer VALUES
(3001, 'Brad Guzan', 'London',100, 5005),
(3002, 'Nick Rimando', 'New York', 100 , 5001),
(3003, 'JozyAltidor', 'Moscow', 200, 5007),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3008, 'Julian Green', 'London', 300, 5002),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003);

select * from customer;

---------------------------storage procedure with-output----------------------

Create Procedure dbo.total_gradesData
(
@Salesman_id int = 1,
@SumOfGrades int output
)
As
Select @SumOfGrades = SUM(grade) from customer
where salesman_id = @Salesman_id
return

Declare @sumofgrades int
Exec total_gradesData 5002, @SumOfGrades output
select @SumOfGrades as 'total grades';

--------------------------create views and fetch records--------------------

create view customerWithNameCityClause
as
select cust_name, city
from customer;

select * from customerWithNameCityClause;

create view customerwithmoregrades
as
select customer_id, cust_name, city
from customer
where grade > 200;

select * from customerwithmoregrades;

--------------------Updating view--------------------

update customerwithmoregrades 
set city = 'New york'
where customer_id = 3004;

-------------------Deleting row from view----------------

delete from customerWithNameCityClause
where city = 'London';

-----------------------dropping view----------------

drop view view_name_here;

--------------------------------------------------------------------------
-----------------------SubQuery---------------------

select * from customer
where customer_id in(
select customer_id from customer
where grade >=200
);

-------------------------Triggers----------------------








