-- ==========================================================
-- Business Case Study #8
-- Company : Amazon
-- Problem :
-- Identify cities that have generated more than ₹5,000
-- in total sales.
-- ==========================================================

SELECT

    -- Retrieve the city name
    c.city,

    -- Count the total number of orders placed in each city
    COUNT(o.order_id) AS Total_Number_Of_Orders,

    -- Calculate the total sales amount for each city
    SUM(o.amount) AS Total_Sales_Amount

FROM Customers c

-- Join Customers and Orders using Customer ID
INNER JOIN Orders o
    ON c.customer_id = o.customer_id

-- Group the data by city
GROUP BY
    c.city

-- Display only cities whose total sales exceed ₹5,000
HAVING
    SUM(o.amount) > 5000

-- Sort the results by:
-- 1. Highest Total Sales Amount
-- 2. Highest Total Number of Orders (if sales are equal)
ORDER BY
    SUM(o.amount) DESC,
    COUNT(o.order_id) DESC;
