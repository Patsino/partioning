SELECT * FROM sales_data 
WHERE sale_date >= '2023-06-01' 
AND sale_date < '2023-07-01';

SELECT to_char(sale_date, 'YYYY-MM') AS month,  
SUM(sale_amount) AS total_sale_amount
FROM sales_data
GROUP BY to_char(sale_date, 'YYYY-MM')
ORDER BY month;

SELECT salesperson_id, SUM(sale_amount) AS total_sales
FROM sales_data
WHERE region_id = 1
GROUP BY salesperson_id
ORDER BY total_sales DESC
LIMIT 3;