# Business Case Study #5

## Company

Amazon

---

## Business Problem

The Customer Relationship Manager wants to identify the company's most valuable customers by analyzing their purchasing behavior.

The report should display:

- Customer ID
- Customer Name
- Total Number of Orders
- Total Sales Amount

### Business Rules

- Display only the **Top 5 customers**.
- Customers should be ranked by:
  1. Highest Number of Orders
  2. If two customers have the same number of orders, the customer with the higher Total Sales Amount should appear first.

---

## Business Objective

Analyze customer purchasing behavior by evaluating both purchase frequency and total sales amount to identify the company's most valuable customers.

This analysis helps the business:

- Identify loyal customers
- Improve customer retention
- Design customer loyalty programs
- Support personalized marketing campaigns
- Enable data-driven business decisions

---

## SQL Concepts Used

- INNER JOIN
- Aggregate Functions (`COUNT`, `SUM`)
- GROUP BY
- ORDER BY (Multiple Columns)
- TOP

---

## Expected Output

A report displaying the Top 5 customers with:

- Customer ID
- Customer Name
- Total Number of Orders
- Total Sales Amount

The results should be sorted by the highest number of orders first. If two customers have the same number of orders, the customer with the higher total sales amount should appear first.
