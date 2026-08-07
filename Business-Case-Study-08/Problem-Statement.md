# Business Case Study #8

## Company

Amazon

---

# Business Problem

The Sales Director wants to identify **cities that have generated more than ₹5,000 in total sales**.

The report should display:

* City
* Total Number of Orders
* Total Sales Amount

Only cities with **Total Sales Amount greater than ₹5,000** should appear in the report.

---

# Business Rules

* Calculate the total sales for each city.
* Display **only cities whose Total Sales Amount is greater than ₹5,000**.
* Sort the report by:

  1. Highest **Total Sales Amount**
  2. If two cities have the same Total Sales Amount, the city with the **higher Total Number of Orders** should appear first.

---

# Business Objective

Analyze regional sales performance by identifying cities that generate significant revenue.

This analysis helps the business:

* Identify high-performing cities.
* Improve inventory planning.
* Focus regional marketing campaigns.
* Identify profitable sales regions.
* Support data-driven business decisions.

---

# SQL Concepts Used

* INNER JOIN
* Aggregate Functions (`COUNT`, `SUM`)
* GROUP BY
* HAVING
* ORDER BY

---

# Expected Report

Generate a report displaying:

* City
* Total Number of Orders
* Total Sales Amount

The report should include **only cities whose Total Sales Amount exceeds ₹5,000**.

The results should be sorted by:

1. Highest **Total Sales Amount**
2. Highest **Total Number of Orders** (if total sales are equal)

---

# Key Learning

This case study demonstrates how the **HAVING** clause is used to filter grouped data after applying aggregate functions such as `SUM()` and `COUNT()`. It also reinforces the use of **INNER JOIN**, **GROUP BY**, and **ORDER BY** to solve real-world business problems.
