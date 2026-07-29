-- ==========================================================
-- Business Case Study #3
-- Company: Amazon
-- Problem:
-- Analyze Monthly Sales Performance
-- ==========================================================

SELECT

    -- Extract Month Name
    DATENAME(MONTH, order_date) AS Month_Name,

    -- Calculate Monthly Sales
    SUM(amount) AS Total_Sales_Amount,

    -- Count Total Orders
    COUNT(order_id) AS Total_Number_of_Orders

FROM Orders

-- Group Records by Month
GROUP BY
    DATENAME(MONTH, order_date),
    MONTH(order_date)

-- Display Months in Chronological Order
ORDER BY
    MONTH(order_date) ASC;
