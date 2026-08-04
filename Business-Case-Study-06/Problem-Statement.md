# Business Case Study #6

## Company

Amazon

---

## Business Problem

The Sales Manager wants to analyze the **Average Order Value (AOV)** for each customer.

Average Order Value (AOV) helps the business understand customer spending behavior by measuring the average amount spent per order. This enables the company to identify high-value customers and improve revenue generation strategies.

The report should display:

- Customer ID
- Customer Name
- Total Number of Orders
- Total Sales Amount
- Average Order Value

### Business Rules

- Display all customers who have placed at least one order.
- Customers should be sorted by:
  1. Highest Average Order Value
  2. If two customers have the same Average Order Value, the customer with the higher Total Sales Amount should appear first.

---

## Business Objective

Analyze customer purchasing behavior by calculating the **Average Order Value (AOV)** for each customer.

This analysis helps the business:

- Identify high-value customers.
- Improve upselling and cross-selling strategies.
- Design personalized marketing campaigns.
- Increase overall customer revenue.
- Support data-driven business decisions.

---

## SQL Concepts Used

- INNER JOIN
- Aggregate Functions (`COUNT`, `SUM`, `AVG`)
- GROUP BY
- ORDER BY

---

## Expected Report

A report displaying:

- Customer ID
- Customer Name
- Total Number of Orders
- Total Sales Amount
- Average Order Value

The results should be sorted by:

1. Highest Average Order Value.
2. If two customers have the same Average Order Value, the customer with the higher Total Sales Amount should appear first.
