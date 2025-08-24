/*
	========================
	== 05 GROUP BY Clause ==
	========================
	- used to GROUP rows that have the same values in one or more columns and perform aggregate functions on them 
	- combines the rows with the same values 
	- aggregate a columns with another column [total score by country]
	- the non-aggregated columns that you are adding in the select must be mentioned on the GROUP BY 
	- aggregate functions like: COUNT(), SUM(), AVG(), MAX(), MIN()
	- syntax
		SELECT column_name, AGGREGATE_FUNCTION(column_name)
		FROM table_name
		GROUP BY column_name;

	--------------
	- NOTE THAT -- 
	--------------
		Columns in SELECT must be either: 
		- Inside an aggregate function,
		- or Listed in GROUP BY
*/

use MyDatabase;

SELECT 
	country,
	SUM(score) AS total_score
FROM customers
GROUP BY country;

-- Count customers per country
SELECT 
	country,
	COUNT(*) AS total_customers
FROM customers
GROUP BY country;

-- Average score per country
SELECT 
	country,
	AVG(score) AS avg_score
FROM customers
GROUP BY country;


-- Total score per country
SELECT
	country,
	SUM(score) AS total_score
FROM customers
GROUP BY country;


-- Using GROUP BY with ORDER B
SELECT 
	country,
	COUNT(*) AS total_customers
FROM customers
GROUP BY country
ORDER BY total_customers DESC;


-- Multiple Columns in GROUP BY
SELECT 
	country, score,
	COUNT(*) AS count_score
FROM customers
GROUP BY country, score
ORDER BY country;


-- Find the highest score in each country:
SELECT 
	country, 
	MAX(score) AS highest_score
FROM customers
GROUP BY country;

-- Find the total score and the total number of customers for each country, and sort the result-set
SELECT 
	country,
	SUM(score) AS total_score,
	COUNT(id) AS total_customers
FROM customers 
GROUP BY country
ORDER BY total_score DESC;
