SELECT 
  `Payment Method`,
  COUNT(*) AS total_orders
FROM 
  `online_sales`
GROUP BY 
  `Payment Method`
ORDER BY 
  total_orders DESC;
SELECT 
  `Product Name`,
  SUM(`Units Sold`) AS total_units
FROM 
  `online_sales`
GROUP BY 
  `Product Name`
ORDER BY 
  total_units DESC;

SELECT 
  `Product Category`,
  SUM(`Total Revenue`) AS total_revenue
FROM 
  `online_sales`
GROUP BY 
  `Product Category`
ORDER BY 
  total_revenue DESC;

SELECT 
  `Product Name`,
  SUM(`Total Revenue`) AS total_revenue
FROM 
  `online_sales`
GROUP BY 
  `Product Name`
ORDER BY 
  total_revenue DESC;

SELECT 
  DATE_FORMAT(`Date`, '%Y-%m') AS month_year,
  `Region`,
  SUM(`Total Revenue`) AS total_revenue
FROM 
  `online_sales`
GROUP BY 
  month_year, `Region`
ORDER BY 
  month_year, total_revenue DESC;

SELECT 
  `Region`,
  ROUND(SUM(`Total Revenue`) / COUNT(DISTINCT `Transaction ID`), 2) AS avg_order_value
FROM 
  `online_sales`
GROUP BY 
  `Region`
ORDER BY 
  avg_order_value DESC;

SELECT 
  DATE_FORMAT(`Date`, '%Y-%m') AS month_year,
  ROUND(SUM(`Total Revenue`) / COUNT(DISTINCT `Transaction ID`), 2) AS avg_order_value
FROM 
  `online_sales`
GROUP BY 
  month_year
ORDER BY 
  month_year;
