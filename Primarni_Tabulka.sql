CREATE TABLE t_Michal_Kroupa_project_SQL_primary_final AS (
SELECT  
	cpib.name AS industry_name,
	cpa.value AS industry_payroll,
	cpa.payroll_year AS 'year',
	cpc.name AS product_name,
	AVG(cpr.value) AS product_price
FROM czechia_payroll cpa 
LEFT OUTER JOIN czechia_price cpr
	ON cpa.payroll_year = YEAR(cpr.date_from)
LEFT OUTER JOIN czechia_payroll_industry_branch cpib 
	ON cpa.industry_branch_code = cpib.code 
LEFT OUTER JOIN czechia_price_category cpc 
	ON cpr.category_code = cpc.code
WHERE cpa.unit_code = 200
	AND cpa.calculation_code = 100
GROUP BY
	cpib.name,
	cpa.value,
	cpa.payroll_year,	
	cpc.name
);