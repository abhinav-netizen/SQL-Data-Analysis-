SELECT	YEAR(order_date) AS order_year,
		MONTH(order_date) AS order_month,
		SUM(sales_amount) AS total_sales,
		SUM(SUM(sales_amount)) OVER (ORDER BY YEAR(order_date), MONTH(order_date)) AS running_total_sales
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY YEAR(order_date),MONTH(order_date)