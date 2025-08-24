/*
	=====================
	== 03 WHERE Clause ==
	=====================
	- used to make coniditions on SQL Statement
	- syntax
		SELECT col1, col2, ..
		FROM table_name
		WHERE condition;
*/

-- select all customers from USA
SELECT *
FROM customers
WHERE country = 'USA';


-- select all customers that's name is -> John
SELECT *
FROM customers
WHERE first= 'John';


-- select the first 4 customers
SELECT * 
FROM customers 
WHERE id < 5;
