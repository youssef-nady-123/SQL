/*
	=======================
	== 12 DROP Statement == 
	=======================
	- DROP Statemen is used to permanently delete database objects,
		such as tables, databases, views, indexes, or constraints
	- when use DROP, all the data and structre are deleted, it can't be rolled back
	- we use "IF EXISTS" to avoid errors
	- the DROP statement is very simple, but risky to use
*/

-- delete the table persons from the database
DROP TABLE persons;

-- delete database
DROP DATABASE IF EXISTS people;


-- delete a column from the database
ALTER TABLE perons
DROP COLUMN email;


-- delete a primary key 
ALTER TABLE persons
DROP PRIMARY KEY pk_persons;
