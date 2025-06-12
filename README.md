# SALES PERFORMANCE DASHBOARD of Bank Muamalat: 
## Period Jan 2020-Dec 2021
<p align="center">
    <img src="https://github.com/user-attachments/assets/fd5572a9-51fa-46ae-94cb-3ed25dc84bf1" width="350">
    <img src="https://github.com/user-attachments/assets/a0453bbc-9dd7-43f9-a393-0a158d3c5315" width="350">
</p>

PT Bank Muamalat Indonesia Tbk is the first bank in Indonesia to operate based on Islamic (sharia) principles. Today, Bank Muamalat continues to innovate by introducing a range of sharia compliant products, including Islamic insurance, Islamic pension funds, and Islamic multifinance services.

## Problem Statement 

As PT Bank Muamalat Indonesia Tbk expands its sharia (compliant product offerings—including Islamic insurance, pension funds, and multifinance services) it faces challenges in monitoring and evaluating product performance across different categories, cities, and time periods. The lack of a centralized, visual, and interactive reporting tool hinders the ability of decision-makers to quickly identify sales trends, customer behavior, and high-performing regions or products.

## Goal
This project aims to develop a comprehensive and interactive sales performance dashboard that enables PT Bank Muamalat to track, analyze, and optimize the sales performance of its sharia-based products across various dimensions.

## Data Gathering
The four available files were selected for analysis and imported to Google BigQuery using SQL for data preparation and dashboarding. The files include:
```bash
Customers.csv
Orders.csv
Products.csv
Product Categories.csv
```
The master_table is a consolidated dataset derived from joining customer, order, product, and category tables, designed to support detailed sales performance analysis. It includes key fields such as customer email and city, order date, product name and category, quantity, price, and a calculated TotalSalesPerCustomer value (price × quantity). 


SQL query for data cleaning and formatting is in 
```bash
Sales Performance Dashboard - Bank Muamalat.sql
```
or kindly click here:
[Sales Performance Dashboard - Bank Muamalat (SQL File)](https://github.com/bintangphylosophie/bank-muamalat-sales-performance-dashboard/blob/main/Bank%20Muamalat%20Dashboard%20-%20Query.sql)

The dataset is linked to Looker Studio, which supports Google BigQuery, enabling further analysis and visualization for dashboard creation.

## Data Modeling
An Entity Relationship Diagram (ERD) was created to visualize the relationships among all tables and ensure proper data structure for analysis.
<div align="center">
  <img src="https://github.com/user-attachments/assets/8639b6e9-fba3-4443-a4ff-17984a7b1d26" width="400">
</div>

## Analysis of Data, Insight, Recommendation
The analysis of data, insights, and recommendations can be viewed in the file here:
```bash
Sales Performance Dashboard of Bank Muamalat.pdf
```
or kindly click: 
[Sales Performance Dashboard of Bank Muamalat (PDF)](https://github.com/bintangphylosophie/bank-muamalat-sales-performance-dashboard/blob/main/Bank%20Muamalat%20Dashboard.pdf)

## Dashboard
This link will take you to Looker Studio to view the  Sales Performance Dashboard of Bank Muamalat: Period Jan 2020- Dec 2021

[Looker Studio Report](https://lookerstudio.google.com/reporting/badb3c00-1f45-43fd-9306-1339d2579204)
<div align="center">
  <img src="https://github.com/user-attachments/assets/15a9c1b8-7257-45e7-b6a9-b42f5420e8e8" width="600">
</div>


# Thank You
