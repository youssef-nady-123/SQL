/*
	=========================
	== 13 INSERT Statement ==
	=========================
	- used to add a new records inte the table
	- string values must be written into single quotes
	- use "DEFAULT" if you want to insert a column's default name
	- the number of columns must matches the number of values
	- syntax
		INSERT INTO table_name (column1, column2, column3, ...)
		VALUES (value1, value2, value3, ...);
*/

-- insert a new record
INSERT INTO customers (id, first_name, country, score)
VALUES (9, 'Laila', 'France', 700);

-- Insert into Specific Columns
INSERT INTO customers (id, first_name, country)
VALUES (10, 'Omar', 'Canada');


-- Insert Multiple Students at Once
INSERT INTO customers (id, first_name, country, score)
VALUES
(11, 'Mina', 'Egypt', 620),
(12, 'Sam', 'USA', 800),
(13, 'Nour', 'Germany', 450);


/*
	----------
	-- NOTE --
	----------
	- the SQL execute the command based on -> matching data types, column count, and constraints
	- the SQL will insert data as you will write on the statement
	- the columns that does not written will be NULL
*/
INSERT INTO customers (id, first_name, country, score)
VALUES (14, 'USA', 'Anne', 530);


FROM customers;
SELECT *


------------------------------------------------
-- write data from one table to another table --
------------------------------------------------
-- copy data from 'customers' table into 'persons' table
-- first: select matches value from the source
-- second: insert the data from the source table to the destination table 

INSERT INTO persons (id, person_name, birth_date, phone) 
SELECT 
	id,
	first_name,
	NULL,
	'Unknwon'
FROM customers;

-- select all records from the table persons after insert
SELECT *
FROM persons;