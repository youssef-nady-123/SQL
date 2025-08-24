/*
	=========================
	== 04 ORDER BY Keyword ==
	=========================
	- used to sort the result-set
	- you can ssort your data
		1- ASC  'ascending'  sort, and this is the default sort 
		2- DESC 'descending' sort 
	- syntax
		SELECT column1, column2, ..
		FROM table_name 
		WHERE condition
		ORDER BY column_name ASC|DESC;
*/

-- sort the records from the largest id to smallest id
SELECT *
FROM customers
ORDER BY id DESC;


-- get all records from the USA, and sort the result-set from the largest score to smallest score
SELECT *
FROM customers 
WHERE country = 'Egypt'
ORDER BY score DESC;


-- sort the charchters from a-z
SELECT 
	id,
	first_name 
FROM customers
ORDER BY first_name ASC;

/*
	--------------------
	-- Nested Sorting --
	--------------------
	- The ORDER BY clause sorts the results based on one or more columns.
	- The results will be grouped and sorted alphabetically by the country column
	- Inside each country group, customers will be sorted by score from highest to lowest
*/
SELECT *
FROM customers 
ORDER BY 
	country ASC,
	score DESC;

----------------------------------------------------------------------------------------------
-- Retrieve all customers and sort the results by the country and then by the highest score -- 
----------------------------------------------------------------------------------------------
SELECT *
FROM customers 
ORDER BY 
	country ASC,
	score DESC;
