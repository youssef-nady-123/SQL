/*
    ===================
    == 22 RIGHT JOIN ==
    ===================
    - A RIGHT JOIN returns all rows from the right table (e.g., orders),
        and the matching rows from the left table (e.g., customers).
    - If there’s no match in the left table, the result will contain NULL for columns from the left table.
*/

USE MyDatabase;


-- Show me all orders even if there is no matching customer
SELECT 
    c.customer_id,
    c.first_name,
    o.order_id,
    o.amount
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customer_id = o.customer_id
ORDER BY o.order_id;


-- Example 1 — Get All Orders with Customer Names ✅ (Basic RIGHT JOIN)
SELECT 
    o.order_id,
    o.amount,
    c.customer_id,
    c.first_name
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customer_id = o.customer_id
ORDER BY o.order_id;


-- Example 2 — Find Orders Without a Customer (RIGHT JOIN + WHERE)
SELECT 
    o.order_id,
    o.amount,
    o.customer_id
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;


-- Example 3 — Count Total Orders Per Customer (RIGHT JOIN + GROUP BY)
SELECT 
    o.customer_id,
    c.first_name,
    COUNT(o.order_id) AS total_orders
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customer_id = o.customer_id
GROUP BY o.customer_id, c.first_name
ORDER BY total_orders DESC;
