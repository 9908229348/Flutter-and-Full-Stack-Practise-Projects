CREATE DATABASE SQL_PRACTISE1;

USE SQL_PRACTISE1;

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

EXEC sp_rename 'salesman.commision', 'commission';

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

SELECT * FROM customer;

----------------------------Query 1---------------------------------

SELECT sm.name as salesman_name, cs.cust_name, cs.city
FROM salesman sm
JOIN customer cs
ON sm.city = cs.city;

-----------------------------------------------------------

CREATE TABLE Orders(
ord_no INT NOT NULL,
purch_amt DECIMAL(10,2) NOT NULL,
ord_date DATE NOT NULL,
customer_id INT NOT NULL,
salesman_id INT
);

INSERT INTO Orders VALUES
(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003, 5007),
(70013, 3045.6, '2012-04-25', 3002, 5001);

SELECT * FROM Orders;

---------------------------QUERY2------------------------------

SELECT OD.ord_no, OD.purch_amt, CS.cust_name, CS.city
FROM Orders OD
JOIN customer CS
ON OD.customer_id = CS.customer_id
WHERE OD.purch_amt BETWEEN 500 AND 2000;

---------------------------------------------------------

------------------------------QUERY 3------------------------------

SELECT CS.cust_name, SM.city, SM.name, SM.commission
FROM customer CS
LEFT JOIN salesman SM
ON CS.salesman_id = SM.salesman_id;

----------------------------------------------------------------

----------------------------------------QUERY 4------------------------------


SELECT CS.cust_name, CS.city, SM.name, SM.commission
FROM customer CS
RIGHT JOIN salesman SM
ON CS.salesman_id = SM.salesman_id
WHERE SM.commission > 0.12;

--------------------------------------------------------------------

------------------------------------------QUERY 5---------------------------

SELECT CS.cust_name, CS.city AS Customer_city, SM.name as Salesman,SM.city as Salesman_city, SM.commission
FROM customer CS
RIGHT JOIN salesman SM
ON CS.salesman_id = SM.salesman_id
WHERE CS.city != SM.city AND SM.commission > 0.12;

------------------------------------------------------------------------------

----------------------------Query 6-----------------------------------

SELECT OD.ord_no, OD.ord_date, OD.purch_amt, CS.cust_name, CS.grade, SM.name AS Salesman, SM.commission
FROM Orders OD
LEFT JOIN customer CS
ON OD.customer_id = CS.customer_id
LEFT JOIN salesman SM
ON CS.salesman_id = SM.salesman_id;

--------------------------------------------------------------------

----------------------------------QUERY 7------------------------------


SELECT OD.ord_no, OD.ord_date, OD.purch_amt,OD.customer_id,OD.salesman_id, CS.cust_name,CS.city AS Customer_city, CS.grade, SM.name AS Salesman,SM.city as Salesman_city, SM.commission
FROM Orders OD
JOIN customer CS
ON OD.customer_id = CS.customer_id
JOIN salesman SM
ON CS.salesman_id = SM.salesman_id;

-----------------------------------------------------------------------------

-------------------------------------Query 8---------------------------

SELECT CS.cust_name, CS.city AS Customer_city,CS.grade, SM.name as Salesman,SM.city as Salesman_city
FROM customer CS
LEFT JOIN salesman SM
ON CS.salesman_id = SM.salesman_id
ORDER BY CS.customer_id;

-------------------------------------------------------------

------------------------------------------QUERY 9---------------------------

SELECT CS.cust_name, CS.city AS Customer_city,CS.grade, SM.name as Salesman,SM.city as Salesman_city
FROM customer CS
LEFT JOIN salesman SM
ON CS.salesman_id = SM.salesman_id
WHERE CS.grade < 300
ORDER BY CS.customer_id;

-----------------------------------------------------------
---------------------------------QUERY 10------------------------

SELECT CS.cust_name, CS.city, OD.ord_no, OD.ord_date, OD.purch_amt
FROM customer CS
JOIN Orders OD
ON OD.customer_id = CS.customer_id
ORDER BY OD.ord_date;
