/*
    =========================
    == 02 SELECT Statement ==
    =========================
    - used to filter the data from the table 
    - syntax
        SELECT column1, column2, ..
        FROM table_name;
*/

-- select specific records from the table
SELECT
	CustomerID,
    CustomerName 
FROM Customers;

-- select specific columns from the table 
SELECT 
	OrderID,
    OrderDate,
    CustomerID
FROM Orders;

-- select all columns from the table 
SELECT *
FROM Customers;

---------------------
-- SELECT DISTINCT --
---------------------
-- used to select the different values from the table 
SELECT DISTINCT CustomerName
FROM Customers;