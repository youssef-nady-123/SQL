/*
	============================
	== 16 Comparison Operator == 
	============================
	- used to compare two things
	- syntax
		[expression] [operator] [expression]

	=	Equal to	
	>	Greater than	
	<	Less than	
	>=	Greater than or equal to	
	<=	Less than or equal to	
	<>	Not equal to
*/

use MyDatabase;

-- retrieve all customers from germany 
SELECT *
FROM customers
WHERE country = 'Germany';


-- retrieve all customers who are not from Germay 
SELECT *
FROM customers 
WHERE country != 'Germany';


-- retrieve all customers who are not from Germay 
SELECT *
FROM customers 
WHERE country <> 'Germany';


-- retrieve all customers with score greater than 500
SELECT *
FROM customers 
WHERE score > 500;


-- retrieve all customers with score smaller than 350
SELECT *
FROM customers 
WHERE score < 350
ORDER BY score ASC;


-- retrieve all customers with score greater than or equal 300
SELECT *
FROM customers
WHERE score >= 300;


-- retrieve all customers with score smaller than or equal 300
SELECT *
FROM customers 
WHERE score <= 300;