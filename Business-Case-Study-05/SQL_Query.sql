-- ==========================================================
-- Business Case Study #5
-- Company: Amazon
-- Problem:
-- Customer Purchase Analysis
-- ==========================================================

SELECT TOP 5

    -- Customer Details
    c.customer_id,
    c.customer_name,

    -- Calculate Total Number of Orders
    COUNT(o.order_id) AS Total_Number_of_Orders,

    -- Calculate Total Sales Amount
    SUM(o.amount) AS Total_Sales_Amount

FROM Customers c

-- Join Customers with Orders
INNER JOIN Orders o
ON c.customer_id = o.customer_id

-- Group Records by Customer
GROUP BY
    c.customer_id,
    c.customer_name

-- Display Top 5 Customers Based on Business Rules
ORDER BY
    Total_Number_of_Orders DESC,
    Total_Sales_Amount DESC;
