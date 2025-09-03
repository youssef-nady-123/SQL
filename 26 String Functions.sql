/*
	=========================
	== 26 String Functions ==
	=========================
	- string functions: used to manipulate, extract, search, transform string data in SQL
	- CONCAT(): returns a string by concatenating two or more string values
	- LOWER(): converts the string to lower case letters
	- UPPER(): converts the string to upper case letters 
	- TRIM(): remove leading and trailing spaces from a string
	- LENGTH: returns the length of the string
	- SUNSTRING(): returns the substring from the string

	LEN(): is used in SQL Server
*/

-- add column on the table [last_name]
ALTER TABLE customers 
ADD  last_name VARCHAR(100);

UPDATE customers
SET last_name = 'Ahmed';


-- list all customer names, where the name is combination of first name and last name
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM customers ;


-- list the first name of all customers in upper case
SELECT UPPER(first_name) AS first_name
FROM customers;


-- list the first name of all customers in lower case
SELECT LOWER(first_name) AS first_name
FROM customers;


-- get the length of all first names on the customers
SELECT
    first_name,
    LEN(first_name) AS count_of_letters
FROM customers
ORDER BY count_of_letters;


UPDATE customers 
SET last_name = '  Osama  '
WHERE customer_id = 1;


-- remove all spaces from the strings
SELECT 
	last_name,
	TRIM(last_name) AS trimed_spaces
FROM customers;


-- SUBSTRING(column, start, length)
SELECT SUBSTRING(first_name, 0, 3) AS sub_string
FROM customers;


-- retrieve the first two letters from the country
SELECT SUBSTRING(first_name, 0, 3)
FROM customers;