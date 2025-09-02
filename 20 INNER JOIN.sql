/*
	=============
	== 20 JOIN ==
	=============
	- JOINS are used to combine data from two or more tables based on a related column between them
	- they help us answer questions like:
		1- get all customers and their orders
		2- list employees and departments names
	- without JOINs, you'd have to manually fetch data from each table

	----------------
	-- JOIN Types -- 
	----------------
	- INNER JOIN: 
	- LEFT JOIN: 
	- RIGHT JOIN: 
	- FULL JOIN: 
*/

/*
	===================
	== 01 INNER Join == 
	===================
	- the most common Join use between developers
	- used to combine rows from two or more tables based on related columns between them
	- it only return rows where there's a match in both tables
		If a row exists in one table but not in the other → it will be excluded.
		It’s the most commonly used join in SQL.

	- syntax
		SELECT table1.column1, table1.column2, table2.column1, table2.column2
		FROM table1
		INNER JOIN table2
			ON table1.common_column = table2.common_column;
*/

-- list all customers ID, first name, order ID, amount, exclude the customers who have not placed aby order
SELECT 
	c.customer_id,
	c.first_name,
	o.order_id,
	o.amount
FROM customers AS c
INNER JOIN orders AS o
ON c.customer_id = o.customer_id
ORDER BY c.customer_id ASC;


-- we’ll display customer name, country, total score, and order amount
SELECT 
    c.first_name,
    c.country,
    c.score,
    o.order_id,
    o.amount
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
ORDER BY o.amount DESC;


-- show full orders details
SELECT 
    c.first_name,
    c.country,
    o.order_id,
    o.order_date,
    o.amount
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
ORDER BY o.amount DESC;

-- count orders per customer
SELECT 
    c.first_name,
    COUNT(o.order_id) AS total_orders
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
GROUP BY c.first_name
ORDER BY total_orders DESC;
