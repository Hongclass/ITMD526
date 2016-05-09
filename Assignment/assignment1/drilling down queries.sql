SELECT 	f.sales_raw_id,
	d.the_date,
	f.transaction_number,
	f.transaction_line_number,
	c.first_name AS customer_first_name,
	c.last_name AS customer_last_name,
	p.PRODUCT_DESC AS product_desc,
	p.CATEGORY AS category,
	f.unit_price,
	f.discount_pct,
	f.sales_qty,
	f.extended_sales_total
FROM fact_sales f, dim_date d, dim_customer_scd1 c, dim_product_scd1 p
WHERE f.date_key = d.date_key
AND f.customer_key = c.customer_key
AND f.product_key = p.product_key;

SELECT 	p.CATEGORY AS category,
	c.first_name AS customer_first_name,
	c.last_name AS customer_last_name,
	f.unit_price,
	f.discount_pct,
	f.sales_qty,
	f.extended_sales_total
FROM fact_sales f, dim_date d, dim_customer_scd1 c, dim_product_scd1 p
WHERE f.date_key = d.date_key
AND f.customer_key = c.customer_key
AND f.product_key = p.product_key
ORDER BY p.CATEGORY;
	

SELECT 	p.CATEGORY AS category,
	COUNT(c.last_name) AS customers_number,
	SUM(f.sales_qty) AS sales_qty,
	SUM(f.extended_sales_total) AS sales_total
FROM fact_sales f, dim_date d, dim_customer_scd1 c, dim_product_scd1 p
WHERE f.date_key = d.date_key
AND f.customer_key = c.customer_key
AND f.product_key = p.product_key
GROUP BY p.CATEGORY;


