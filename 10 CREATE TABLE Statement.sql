/*
	=====================
	== 10 CREATE TABLE ==
	=====================
	- CREATE TABLE is a statement used to create a new table in SQL 
	- NOT NULL: is a conatrain used to make the field unempty 
	- in each table must have a primary key
	- primary key: is a unique identifier for each record (row) in a database,
		It ensures that every row can be uniquely identified and cannot contain duplicate or NULL value
	- syntax
		CREATE TABLE table_name (
			column1 datatype CONSTRAINT,
			column2 datatype CONSTRAINT,
			column3 datatype CONSTRAINT,
			....
		);
*/

-- create a new table calles persons, with columns: id, person_name, birth_date, and phone 
CREATE TABLE persons (
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	birth_date DATE,
	phone VARCHAR(15) NOT NULL,

	/*
		- create the primary key for the table 
		- syntax
			CONSTRAIN constraint_name PRIMARY KEY (field_name)
	*/
	CONSTRAINT pk_persons PRIMARY KEY (id)
);
