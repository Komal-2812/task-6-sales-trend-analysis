SELECT 
  DATE_FORMAT(`Date`, '%Y-%m') AS month_year,
  SUM(`Total Revenue`) AS total_revenue,
  COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM 
  `online_sales`
GROUP BY 
  month_year
ORDER BY 
  month_year;

SELECT 
  DATE_FORMAT(`Date`, '%Y-%m') AS month_year,
  SUM(`Total Revenue`) AS total_revenue
FROM 
  `online_sales`
GROUP BY 
  month_year
ORDER BY 
  total_revenue DESC;



SELECT 
  DATE_FORMAT(`Date`, '%Y-%m') AS month_year,
  `Region`,
  COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM 
  `online_sales`
GROUP BY 
  month_year, `Region`
ORDER BY 
  month_year, `Region`;

