# Retail Sales Analysis

## Project Overview
This project analyzes retail transaction data to identify customer purchasing patterns, sales trends, product-category performance, and differences in spending behavior across customer segments.

The analysis was completed using **Excel** for cleaning, PivotTables, and dashboard creation, and **BigQuery SQL** for validating and reproducing key findings.

## Tools
- Microsoft Excel
- PivotTables and PivotCharts
- Google BigQuery
- SQL

## Dataset
The cleaned dataset contains **1,000 unique transactions** after duplicate records were removed.

Key fields include:
- Transaction ID
- Date
- Customer ID
- Gender
- Age
- Product Category
- Quantity
- Price per Unit
- Total Amount

## Data Cleaning
- Removed approximately 1,000 duplicate records.
- Confirmed no missing values in the cleaned Excel dataset.
- Checked category consistency and numeric values.
- Validated transaction totals using Quantity × Price per Unit.
- Handled a null date row during SQL analysis.

## Key KPIs
- **Total Revenue:** $456,000
- **Transactions:** 1,000
- **Items Sold:** 2,514
- **Average Transaction Value:** $456

## Business Questions
1. How does customer age and gender influence purchasing behavior?
2. Are there patterns in sales across different time periods?
3. Which product categories have the highest customer appeal?
4. What are the relationships between age, spending, and product preferences?
5. How do shopping habits change across monthly/seasonal periods?
6. How does transaction size relate to spending behavior?
7. How are product prices distributed across categories?

## Key Findings
- Customers aged **18–24** had the highest average transaction value at about **$501**.
- Gender differences in average transaction value were small compared with differences across age groups.
- **May** recorded the highest monthly sales at **$53,150**, while **September** recorded the lowest at **$23,620**.
- **Electronics** generated the highest product-category revenue at **$156,905**, narrowly ahead of Clothing.
- Product preferences varied by age group, with customers aged **25–34** spending most on Clothing and customers aged **55+** spending most on Electronics.
- Average transaction value rose from about **$177** for one-item purchases to about **$707** for four-item purchases.
- Purchases were relatively balanced across the available price tiers.

## Recommendations
- Investigate the drivers behind the September sales decline.
- Use age-based customer segmentation when planning product promotions.
- Encourage larger basket sizes through product bundles and cross-selling.
- Monitor monthly category performance to identify repeatable seasonal trends over multiple years.

## SQL Analysis
The included `retail_sales_queries.sql` file contains queries for:
- Monthly sales trends
- Revenue by product category
- Spending by age group
- Average transaction value by quantity

## Dashboard
The Excel workbook contains a dashboard with KPI cards and visualizations covering sales trends, customer segments, product categories, transaction size, and price-point behavior.
