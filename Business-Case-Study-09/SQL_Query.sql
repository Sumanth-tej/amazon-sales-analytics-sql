-- ==========================================================
-- Business Case Study #9
-- Company : Amazon
-- Problem :
-- Identify customers whose total sales are higher than
-- the average total sales of all customers.
-- ==========================================================

SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.amount) AS Total_Sales_Amount

FROM Customers c

-- Join Customers with their Orders
INNER JOIN Orders o
    ON c.customer_id = o.customer_id

-- Calculate total sales for each customer
GROUP BY
    c.customer_id,
    c.customer_name

-- Keep only customers whose total sales are greater than
-- the average total sales of all customers
HAVING
    SUM(o.amount) >
    (
        SELECT
            AVG(Customer_Total)
        FROM
        (
            SELECT
                customer_id,
                SUM(amount) AS Customer_Total
            FROM Orders
            GROUP BY customer_id
        ) AS Customer_Sales
    )

-- Show highest-value customers first
ORDER BY
    Total_Sales_Amount DESC;
