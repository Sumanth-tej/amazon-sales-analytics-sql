-- ==========================================================
-- Business Case Study #7
-- Company: Amazon
-- Problem:
-- Customers Who Never Placed an Order
-- ==========================================================

SELECT

    -- Customer Details
    c.customer_id,
    c.customer_name

FROM Customers c

-- Match each customer with their corresponding orders (if available)
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id

-- Display only customers who have never placed an order
WHERE o.order_id IS NULL

-- Sort customers by Customer ID in ascending order
ORDER BY
    c.customer_id ASC;
