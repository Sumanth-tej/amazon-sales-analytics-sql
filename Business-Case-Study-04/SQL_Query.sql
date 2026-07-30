-- ==========================================================
-- Business Case Study #4
-- Company: Amazon
-- Problem:
-- Analyze Regional Sales Performance
-- ==========================================================

SELECT

    -- Region Name
    Region,

    -- Calculate Total Sales Amount
    SUM(Amount) AS Total_Sales_Amount,

    -- Calculate Total Number of Orders
    COUNT(Order_ID) AS Total_Number_of_Orders

FROM Orders

-- Group Records by Region
GROUP BY
    Region

-- Display Regions with Highest Sales First
ORDER BY
    Total_Sales_Amount DESC;
