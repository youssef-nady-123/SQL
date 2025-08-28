/*
	===============================
	== 09 Write Multiple Queries ==
	===============================
	- [1] at the end of each query write semicolomn  (;)
	- [2] static (fixed) values, that means output data from us not in the table 
*/


SELECT *
FROM Customers;


SELECT *
FROM Orders;


-- static (fixed) values, you can output any value using SELECT 
SELECT 'HELLO WORLD' AS static_string;
SELECT 123 AS static_value;


-- add column from us
SELECT 
	id,
	first_name,
	'New Customers' AS customer_type
FROM customers;