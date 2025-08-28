/*
	========================
	== 11 ALTER Statement == 
	========================
	- ALTER Statement: used to modify an existing table without deleting it, 
		it allows you to add, delete, or change columns, rename tables, or add and remove constraints

	- syntax
		ALTER TABLE table_name
		ADD | DROP | MODIFY | RENAME | ...;

	-- example to add new column
		ALTER TABLE Students
		ADD email VARCHAR(100);

	-- example to modify an existing column
		ALTER TABLE Students
		MODIFY name VARCHAR(150);
*/


-- add a new column called email to the persons table
ALTER TABLE persons 
ADD email VARCHAR(100);


-- remove the column phone from the persons table
ALTER TABLE persons
DROP COLUMN phone;


SELECT *
FROM persons;