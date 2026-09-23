-- Retail Sales Analysis
-- Analyst: Andrw Luciano
-- Tools: BigQuery / Standard SQL

-- 1. Monthly sales trend
SELECT
  FORMAT_DATE('%b', Date) AS month,
  EXTRACT(MONTH FROM Date) AS month_number,
  SUM(`Total Amount`) AS total_sales
FROM `project-2246b9ea-0836-444d-a5f.retail_sales_project.retail_sales`
WHERE Date IS NOT NULL
GROUP BY month, month_number
ORDER BY month_number;

-- 2. Revenue by product category
SELECT
  `Product Category` AS product_category,
  SUM(`Total Amount`) AS total_revenue
FROM `project-2246b9ea-0836-444d-a5f.retail_sales_project.retail_sales`
WHERE `Product Category` IS NOT NULL
GROUP BY product_category
ORDER BY total_revenue DESC;

-- 3. Spending by age group
SELECT
  `Age group` AS age_group,
  SUM(`Total Amount`) AS total_revenue,
  AVG(`Total Amount`) AS avg_transaction_value
FROM `project-2246b9ea-0836-444d-a5f.retail_sales_project.retail_sales`
WHERE `Age group` IS NOT NULL
GROUP BY age_group
ORDER BY
  CASE age_group
    WHEN '18-24' THEN 1
    WHEN '25-34' THEN 2
    WHEN '35-44' THEN 3
    WHEN '45-54' THEN 4
    WHEN '55+' THEN 5
    ELSE 6
  END;

-- 4. Average transaction value by quantity
SELECT
  Quantity,
  COUNT(`Transaction ID`) AS transaction_count,
  AVG(`Total Amount`) AS avg_transaction_value,
  AVG(`Price per Unit`) AS avg_price_per_unit
FROM `project-2246b9ea-0836-444d-a5f.retail_sales_project.retail_sales`
WHERE Quantity IS NOT NULL
GROUP BY Quantity
ORDER BY Quantity;
