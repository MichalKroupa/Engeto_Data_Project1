SELECT 	
	industry_name,
	ROUND(AVG(industry_payroll),0) AS avg_payroll,
	`year`
FROM t_michal_kroupa_project_sql_primary_final tmkpspf 
WHERE 
	industry_name IS NOT NULL 
GROUP BY
	industry_name,
	`year` 
