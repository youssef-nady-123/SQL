/*
	=========================
	== 15 DELETE Statement == 
	=========================
	- DELETE Statement used to delete specific record on the table 
	- be careful when delete records, it is very risky
	- always use WHERE clause when delete records to determine the specific row to be deleted
	- syntax

		DELETE FROM table_name
		WHERE condition;

	- DELETE all rows 
		DELTE FROM table_name;
*/

use MyDatabase;


-- remove all customers will score = 0
DELETE FROM customers 
WHERE score = 0;


-- remove all customers with NULL values on its score
DELETE FROM customers 
WHERE score IS NULL;


-- delete all customers with an ID greater than 15
DELETE FROM customers 
WHERE id > 15;


-- delete all customers 
DELETE FROM customers;


--------------
-- TRUNCATE -- 
--------------
-- another way to delete all records from the table without checking or logging
-- TRUNCATE faster than DELETE 
TRUNCATE TABLE persons;