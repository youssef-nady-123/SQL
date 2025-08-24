/*
	====================
	== 07 TOP Keyword == 
	====================
	- used to limit the number of rows returned by a query 
	- syntax
		SELECT TOP (number) column1, column2, ...
		FROM table_name
		WHERE condition
		ORDER BY column_name ASC|DESC;

*/

-- Get the First 3 Rows
SELECT TOP 3 *
FROM customers;


-- Get Top 3 Customers by Highest Scores
SELECT TOP 3 
	first_name,
	score
FROM customers
ORDER BY score DESC;


-- Get Top 3 Lowest Scores
SELECT TOP 3 
	first_name,
	score
FROM customers
ORDER BY score ASC;


-- Get Top 50% of Customers by Highest Scores
SELECT TOP 50 PERCENT 
	first_name,
	score
FROM customers
ORDER BY score DESC;


-- Returns the first 3 unique countries alphabetically.
SELECT DISTINCT TOP 3 country
FROM customers
ORDER BY country ASC;


-- Find the top 2 countries with the highest total scores
SELECT TOP 2 
	country,
	SUM(score) AS total_score
FROM customers
GROUP BY country
ORDER BY total_score DESC;


-- Show top 2 countries where total scores > 800
SELECT TOP 2 
	country,
	SUM(score) AS total_score
FROM customers
GROUP BY country
HAVING SUM(score) > 800
ORDER BY total_score DESC;


-- Top 2 Countries with Highest Average Scores (TOP + GROUP BY + ORDER BY)
SELECT TOP 2 
	country, 
	AVG(score) AS avg_score
FROM customers
GROUP BY country
ORDER BY avg_score DESC;


-- Top 3 Countries Having More Than 1 Customer (TOP + GROUP BY + HAVING + ORDER BY)
SELECT TOP 3 
	country, 
	COUNT(*) AS total_customers
FROM customers
GROUP BY country
HAVING COUNT(*) > 1
ORDER BY total_customers DESC, country ASC;
