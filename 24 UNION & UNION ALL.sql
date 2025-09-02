/*
    ==========================
    == 24 UNION & UNION ALL == 
    ==========================
    - UNION used to combine the rows from both tables
    - used to combines the rows together 
    
    -----------
    -- UNION --
    -----------
    - operator used to combine the results of two or more SELECT statements into a single result
    - it removes duplicate rows
        The number of columns in all SELECT statements must be the same.
        The data types of the columns must be compatible.
        Column names in the final result are taken from the first SELECT.
    - Syntax
        SELECT country FROM table1
        UNION
        SELECT country FROM table2;

    ---------------
    -- UNION ALL --
    ---------------
    - the UNION ALL operator is used to combine results from multiple SELECT without removing duplicates
    - Syntax
        SELECT country FROM table1
        UNION ALL
        SELECT country FROM table2;
*/


USE MyDatabase;

CREATE TABLE students_2024 (
    id INT,
    name VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE students_2025 (
    id INT,
    name VARCHAR(50),
    country VARCHAR(50)
);

-- Insert data into students_2024
INSERT INTO students_2024 (id, name, country) VALUES
(1, 'Ali', 'Egypt'),
(2, 'Sara', 'USA'),
(3, 'John', 'UK'),
(4, 'Mona', 'Canada');

-- Insert data into students_2025
INSERT INTO students_2025 (id, name, country) VALUES
(3, 'John', 'UK'),
(4, 'Mona', 'Canada'),
(5, 'Youssef', 'Egypt'),
(6, 'Emma', 'France');



-- UNION removes duplicate records automatically
SELECT name, country FROM students_2024
UNION
SELECT name, country FROM students_2025
ORDER BY country ASC;


-- Count Unique Students
SELECT COUNT(*) AS unique_students
FROM (
    SELECT name FROM students_2024
    UNION
    SELECT name FROM students_2025
) AS unique_list;



-- UNION ALL keeps duplicates.
SELECT name, country FROM students_2024
UNION ALL
SELECT name, country FROM students_2025;


-- Count How Many Students in Both Tables
SELECT COUNT(*) AS total_students
FROM (
    SELECT name FROM students_2024
    UNION ALL
    SELECT name FROM students_2025
) AS all_students;
