SELECT DISTINCT 
	tmk.`year`,
	tmk2.`year` AS year_prev,
	ROUND((tmk.product_price - tmk2.product_price) / tmk2.product_price * 100, 2) - ROUND((tmk.industry_payroll - tmk2.industry_payroll) / tmk2.industry_payroll * 100, 2) AS diff_percent
FROM t_michal_kroupa_project_sql_primary_final tmk
JOIN t_michal_kroupa_project_sql_primary_final tmk2 
	ON tmk.product_name = tmk2.product_name 
	AND tmk.`year` = tmk2.`year` + 1
GROUP BY 
	tmk.`year`
ORDER BY 
	diff_percent DESC