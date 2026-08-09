# Business Case Study #10

## Company

Amazon

---

## Business Problem

The Sales Director wants to identify the **best-selling product in each product category** based on total sales amount.

The business wants to understand which products perform best within their respective categories.

The report should display:

* Category
* Product Name
* Total Sales Amount

### Business Rules

* Calculate the total sales amount for each product.
* Group products according to their respective categories.
* Rank products by total sales amount in descending order within each category.
* Display only the **highest-selling product from each category**.
* Sort the final report by **Category in ascending order**.

---

## Business Objective

Identify the top-performing product within each Amazon product category.

This analysis helps the business:

* Identify high-performing products.
* Improve inventory planning.
* Prioritize successful products for marketing campaigns.
* Understand product performance across categories.
* Support category-level sales strategies.

---

## SQL Concepts Used

* INNER JOIN
* Aggregate Functions (`SUM`)
* GROUP BY
* Common Table Expression (CTE)
* Window Functions
* `ROW_NUMBER()`
* `PARTITION BY`
* ORDER BY

---

## Expected Report

A report displaying:

* Category
* Product Name
* Total Sales Amount

The report should contain **only the highest-selling product from each category**.

The final report should be sorted by **Category in ascending order**.
