-- ==========================================================
-- Business Case Study #6
-- Company: Amazon
-- Problem:
-- Average Order Value (AOV) Analysis
-- ==========================================================

SELECT

    -- Customer Details
    c.customer_id,
    c.customer_name,

    -- Calculate Total Number of Orders
    COUNT(o.order_id) AS Total_Number_of_Orders,

    -- Calculate Total Sales Amount
    SUM(o.amount) AS Total_Sales_Amount,

    -- Calculate Average Order Value (AOV)
    -- Formula: Total Sales Amount / Total Number of Orders
    SUM(o.amount) * 1.0 / COUNT(o.order_id) AS Average_Order_Value

FROM Customers c

-- Join Customers with Orders
INNER JOIN Orders o
    ON c.customer_id = o.customer_id

-- Group Records by Customer
GROUP BY
    c.customer_id,
    c.customer_name

-- Sort Results Based on Business Rules
-- 1. Highest Average Order Value
-- 2. Highest Total Sales Amount (if AOV is the same)
ORDER BY
    Average_Order_Value DESC,
    Total_Sales_Amount DESC;
