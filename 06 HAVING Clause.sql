/*
	======================
	== 06 HAVING Clause == 
	======================
	- used to filter groups of data after using the GROUP BY statement 
	- always used with the GROUP BY statement
	- WHERE can not used with the aggregation functions 
	- HAVING usually always used with the aggregation functions 
	- it is similar to WHERE clause but
		WHERE filter rows before grouping 
		HAVING filter rows after grouping 
	- syntax
		SELECT column_name, AGGREGATE_FUNCTION(column_name)
		FROM table_name
		GROUP BY column_name
		HAVING condition;

*/

use MyDatabase;


-- Get countries where total sales > 750
SELECT 
	country,
	SUM(score) AS total_sales
FROM customers
GROUP BY country
HAVING SUM(score) > 750;


/*
	- filter the data using "WHERE", then filter the data using "HAVING"
	- WHERE -> GROUP BY -> HAVING -> SELECT -> ORDER BY
*/
SELECT 
	country,
	SUM(score) AS total_score
FROM customers
WHERE score > 500         -- Filters individual rows first
GROUP BY country
HAVING SUM(score) > 750   -- Filters final groups
ORDER BY total_score DESC;


/*
	find the average score for each country 
	considering only customers with a score not equal to 0
	and return only those countries with an average score greater than 430
*/
SELECT
	country,
	AVG(score) AS avg_score
FROM customers 
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430;

