/*
    ==================
    == 23 FULL JOIN ==
    ==================
    - A FULL JOIN (or FULL OUTER JOIN) combines the results of LEFT JOIN and RIGHT JOIN
        It returns all rows from both tables.
        If there’s a match → it shows data from both tables.
        If there’s no match → it shows NULL for the missing values.
*/


USE MyDatabase;


-- Find Customers Without Orders or Orders Without Customers [MySQL Syntax]
SELECT 
    c.customer_id,
    c.first_name,
    o.order_id,
    o.amount
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id

UNION

SELECT 
    c.customer_id,
    c.first_name,
    o.order_id,
    o.amount
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customer_id = o.customer_id
ORDER BY customer_id;


-- Find Only Unmatched Rows
SELECT 
    c.customer_id,
    c.first_name,
    o.order_id,
    o.amount
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL

UNION

SELECT 
    c.customer_id,
    c.first_name,
    o.order_id,
    o.amount
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;


-- Find Only Unmatched Rows in SQL Server
SELECT 
    c.customer_id,
    c.first_name,
    o.order_id,
    o.amount
FROM customers AS c
FULL JOIN orders AS o
ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL OR o.customer_id IS NULL;
