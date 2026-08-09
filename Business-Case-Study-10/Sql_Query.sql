-- ==========================================================
-- Business Case Study #10
-- Company : Amazon
-- Problem :
-- Identify the best-selling product in each category
-- based on total sales amount.
-- ==========================================================

WITH ProductSales AS
(
    SELECT
        p.category,
        p.product_name,
        SUM(o.amount) AS Total_Sales_Amount,

        -- Rank products within each category
        ROW_NUMBER() OVER
        (
            PARTITION BY p.category
            ORDER BY SUM(o.amount) DESC
        ) AS Product_Rank

    FROM Products p

    -- Join Products with Orders
    INNER JOIN Orders o
        ON p.product_id = o.product_id

    -- Calculate total sales for each product
    GROUP BY
        p.category,
        p.product_name
)

-- Display only the best-selling product from each category
SELECT
    category,
    product_name,
    Total_Sales_Amount

FROM ProductSales

WHERE Product_Rank = 1

-- Sort categories alphabetically
ORDER BY
    category ASC;
