/*
	=========================
	== 17 Logical Operator == 
	=========================
	- logical operator are used in WHERE, HAVING and sometimes with JOIN conditions to combine, filter, or 
		manipulate conditions when retrieving, updating, or deleting data from a database
	- they help whether a condition if TRUE or FALSE
	
	AND			TRUE if all the conditions separated by AND is TRUE	
	OR			TRUE if any of the conditions separated by OR is TRUE	
	NOT			Displays a record if the condition(s) is NOT TRUE, reverse the condition 	
	ANY			TRUE if any of the subquery values meet the condition	
	ALL			TRUE if all of the subquery values meet the condition	
	BETWEEN		TRUE if the operand is within the range of comparisons	
	EXISTS		TRUE if the subquery returns one or more records	
	IN			TRUE if the operand is equal to one of a list of expressions	
	LIKE		TRUE if the operand matches a pattern	
	SOME		TRUE if any of the subquery values meet the condition
*/

USE MyDataBase;


-- retrieve all customers with ID smaller than or equal 10, "AND" from USA
SELECT *
FROM customers
WHERE id <= 10 AND country = 'USA';


/*
	- retrieve all customers with ID smaller than or equal 10, "OR" from USA
	- will return the two conditions 
	- will return first 10 customers 
	- will return all customers from USA
*/
SELECT *
FROM customers
WHERE id <= 10 OR country = 'USA';


-- retrieve all customers who are either from USA or have a score greater than 500
SELECT *
FROM customers 
WHERE score > 500 OR country = 'USA';


-- retrieve all customers with a score not less than 500
SELECT *
FROM customers
WHERE NOT score < 500
ORDER BY score ASC;


--------------------
-- Range Operator --
--------------------
-- BETWEEN: check if a value is within a range 
-- retrieve all customers between 1 and 10 [1-10]
SELECT *
FROM customers 
WHERE id BETWEEN 1 AND 10;


-- retrieve customers that have score between 650 and 850
SELECT *
FROM customers 
WHERE score BETWEEN 650 AND 850
ORDER BY score ASC;