-- ==========================================================
-- Business Case Study #2
-- Company: Amazon
-- Problem:
-- Find the Top 3 Products based on Total Sales Amount.
-- ==========================================================

SELECT TOP 3

    -- Product Details
    p.product_id,
    p.product_name,

    -- Calculate Total Sales
    SUM(o.amount) AS Total_Sales_Amount

FROM Products p

-- Join Products with Orders
INNER JOIN Orders o
ON p.product_id = o.product_id

-- Group Sales by Product
GROUP BY
    p.product_id,
    p.product_name

-- Display Highest Selling Products
ORDER BY
    Total_Sales_Amount DESC;
