/*
	============================
	== 18 Membership Operator ==
	============================
	- IN: check if the value exists in a list 
	- NOT IN: check if the value doex not exists in a list 
*/

USE MyDatabase;


-- retrieve all customers from either Germany or USA
SELECT *
FROM customers 
WHERE country = 'Germany' OR country = 'USA';

--------------------
-- Other Solution -- 
--------------------
SELECT *
FROM customers 
WHERE country in ('Germany', 'USA');


-- retrieve all countires that does not exist on the list 
SELECT *
FROM customers 
WHERE country NOT IN ('USA', 'Egypt', 'Germany');