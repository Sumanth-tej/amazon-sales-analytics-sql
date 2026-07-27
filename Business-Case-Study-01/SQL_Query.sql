/*=========================================================
 Amazon Sales Analytics
 Business Case Study #1

 Query:
 Retrieve the Top 5 customers based on
 total purchase amount.
=========================================================*/

-- Retrieve Top 5 customers by total purchase amount
SELECT TOP 5

    -- Customer Details
    c.customer_id,
    c.customer_name,

    -- Calculate total purchase amount
    SUM(o.amount) AS total_purchase

FROM Customers c

-- Join customer and order information
INNER JOIN Orders o
    ON c.customer_id = o.customer_id

-- Group by customer
GROUP BY
    c.customer_id,
    c.customer_name

-- Sort from highest purchase amount
ORDER BY
    total_purchase DESC;
