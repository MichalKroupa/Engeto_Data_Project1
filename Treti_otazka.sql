SELECT DISTINCT 
	tmk.product_name,
	tmk.`year`,
	tmk2.`year` AS year_prev,
	ROUND((tmk.product_price - tmk2.product_price) / tmk2.product_price * 100, 2) AS price_growth_percent  
FROM t_michal_kroupa_project_sql_primary_final tmk
JOIN t_michal_kroupa_project_sql_primary_final tmk2
	ON tmk.product_name = tmk2.product_name
	AND tmk.`year` = tmk2.`year` + 1
GROUP BY 
	tmk.product_name,
	tmk.`year`
ORDER BY 
	price_growth_percent
LIMIT 200;

	
