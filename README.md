# Amazon Sales Performance Analysis

## Project Overview

End-to-end analysis of 128K+ Amazon India sales records from March–June 2022 using Microsoft Excel, PostgreSQL and Power BI.

The project analyses sales performance, product and regional drivers, fulfilment performance, order cancellations and B2B vs B2C sales.

---

## Business Problem

The analysis aimed to identify the products and regions driving revenue, evaluate order and fulfilment performance, understand cancellation patterns and compare B2B and B2C sales.

---

## Dataset

- **Source:** Kaggle – Amazon Sale Report
- **Period:** March–June 2022
- **Records after cleaning:** 128,808
- **Key fields:** Order ID, Date, Amount, Product Category, Ship State, Fulfilment, Order Status, Quantity and B2B/B2C segment

---

## Data Cleaning & Preparation

- Removed duplicate records, reducing the dataset from 128,976 to 128,808 rows.
- Extracted Year and Month from the date field.
- Converted the Amount column from text to numeric format in PostgreSQL.
- Standardised city and state text casing.

---

## Analytical Questions

1. What is the overall sales performance and average order value?
2. How do sales vary across months, product categories and states?
3. Which fulfilment method handles the highest number of orders?
4. What is the order cancellation rate, and where are cancellations concentrated?
5. How do B2B and B2C sales compare?

---

## Analysis Performed

### Microsoft Excel
Used PivotTables to analyse:
- Monthly sales
- Category sales
- State-wise sales
- Order-status distribution

### PostgreSQL
Used SQL queries to analyse:
- Total sales
- Unique orders
- Average order value
- Monthly sales trends
- Category and state performance
- Fulfilment performance
- Cancellation rate
- B2B vs B2C sales

### Power BI
Built a two-page interactive dashboard covering:
- Sales KPIs
- Monthly sales trends
- Product category performance
- State-wise sales
- Fulfilment performance
- Cancellation analysis
- Order-status performance
- B2B vs B2C sales

---

## Key Findings

- Total sales reached **₹78.50M** across **120.23K unique orders**, with **116.50K units sold** and an average order value of **₹652.89**.
- Sales peaked in **April at ₹28.74M**, followed by declines in May and June.
- **T-shirts generated ₹39.15M (~50%)** of total sales, followed by Shirts at **₹21.27M (~27%)**.
- **Maharashtra** generated the highest sales at **₹13.32M**, followed by Karnataka at **₹10.47M**.
- Amazon fulfilment accounted for **69.6% of fulfilment records**, compared with 30.4% for Merchant fulfilment.
- The overall cancellation rate was **14.3%**.
- **B2C sales accounted for 99.25%** of total sales, while B2B contributed 0.75%.

---

## Business Takeaways

- ₹653 AOV provides a baseline for monitoring customer basket size.
- Sales declined after April; additional data would be needed to determine whether this is seasonal or a sustained slowdown.
- T-shirts and Shirts drive approximately 77% of sales, highlighting the importance of inventory availability.
- Sales are concentrated across several western and southern states, providing opportunities for regional optimisation.
- Amazon is the primary fulfilment method; comparing fulfilment performance can help identify service improvement areas.
- The 14.3% cancellation rate warrants further analysis by state, fulfilment method and category.
- B2B contributes only 0.75% of sales, indicating a predominantly B2C customer base.

---

## Tools & Technologies

- **Microsoft Excel** – PivotTables and data analysis
- **PostgreSQL** – SQL querying and data analysis
- **Power BI** – Dashboard development and data visualisation

---

## Project Structure

```text
Amazon-Sales-Analysis/
│
├── README.md
│
├── SQL/
│   └── amazon_sales_analysis.sql
│
├── Excel/
│   └── amazon_sales_pivot.xlsx
│
├── PowerBI/
│   └── Amazon_Sales_Dashboard.pbix
│
└── Screenshots/
    ├── pivot_analysis.png
    ├── sql_analysis.png
    ├── dashboard_page1.png
    └── dashboard_page2.png
