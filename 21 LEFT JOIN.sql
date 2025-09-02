/*
    ==================
    == 21 LEFT JOIN == 
    ==================
    - all rows from the left table matching from the right table
        if there's no match, it still show the left table, and write the right table rows as NULL
    - syntax 
        LEFT JOIN = All Left Table Rows + Matching Right Table Rows
                If no match → NULL for right table columns
*/

use MyDatabase;

-- list customer ID, first name, oreder ID, amount. exclude the customers who have no placed any orders
SELECT 
    c.customer_id,
    c.first_name,
    o.order_id,
    o.amount
FROM customers AS c
LEFT JOIN orders AS o
    ON c.customer_id = o.customer_id
ORDER BY c.customer_id;


-- Example 2 — Find Customers Without Orders (LEFT JOIN + WHERE)
SELECT 
    c.customer_id,
    c.first_name,
    c.country
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;


-- Example 3 — Count Total Orders per Customer (LEFT JOIN + GROUP BY)
SELECT 
    c.customer_id,
    c.first_name,
    COUNT(o.order_id) AS total_orders
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name
ORDER BY total_orders DESC;


-- Example 4 — Show Customers and Latest Order Amount (LEFT JOIN + MAX)
SELECT 
    c.customer_id,
    c.first_name,
    MAX(o.amount) AS latest_order
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name
ORDER BY latest_order DESC;
