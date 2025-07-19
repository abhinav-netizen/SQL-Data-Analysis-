-- To explore the sales for each year and month
SELECT  YEAR(order_date) AS order_year,
		MONTH(order_date) AS order_month,	
		SUM(sales_amount) AS total_sales,
		SUM(quantity) AS total_quantity,
		COUNT(DISTINCT customer_key ) AS number_of_customers
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date) , MONTH(order_date)
ORDER BY YEAR(order_date), MONTH(order_date) 

