SELECT 
	*
FROM t_michal_kroupa_project_sql_secondary_final tmkpssf 

SELECT
	`year`,
	ROUND(AVG(industry_payroll), 0) AS avg_industry_payroll,
	ROUND(AVG(product_price), 2) AS avg_product_price,
	ROUND(GDP,0) AS CZ_GDP
FROM t_michal_kroupa_project_sql_secondary_final tmk
WHERE
	country = 'Czech Republic'
	AND industry_payroll IS NOT NULL 
	AND product_price IS NOT NULL
GROUP BY
	`year`,
	CZ_GDP 