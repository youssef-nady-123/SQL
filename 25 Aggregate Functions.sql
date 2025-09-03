/*
	============================
	== 25 Aggregate Functions ==
	============================
	- an aggregate function is a function that performs a calculation on a set of values, and returns a single value
	- aggregate functions are often used with the GROUP BY clause of the SELECT statement. the GROUP BY clause splits the
		result-set into groups of values and the aggregate function can be used to return a single value for each group 
	- aggregate functions excepts NULL values, except for COUNT(*)	
	- the most commonly used aggregate functions are:
		MIN() - returns the smallest value within the selected column
		MAX() - returns the largest value within the selected column
		COUNT() - returns the number of rows in a set
		SUM() - returns the total sum of a numerical column
		AVG() - returns the average value of a numerical column
*/

-- find the total number of customers, NULL values are ignored
SELECT COUNT(customer_id) AS total_customers
FROM customers;

-- other solution 
SELECT COUNT(*) AS total_customers
FROM customers;


-- find the total amounts of all orders
SELECT SUM(amount) AS total_amounts
FROM orders;


-- find the average score of all customers, NULLs are ignored
SELECT AVG(score) as average_score
FROM customers;


-- find the oldest date of the order
SELECT MIN(order_date) AS oldest_date
FROM orders;


-- find the lowest score
SELECT MIN(score) AS smallest_score
FROM customers
WHERE score > 0;


-- find the newest date from the orders
SELECT MAX(order_date) AS newest_date
FROM orders;


-- find the largest score
SELECT MAX(score) AS largest_score
FROM customers;