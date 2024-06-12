(SELECT
	`year`,
	product_name,
	AVG(industry_payroll) AS payroll_avg,
	AVG(product_price) AS price_avg,
	ROUND(AVG(industry_payroll) / AVG(product_price), 0) AS can_buy
FROM t_michal_kroupa_project_sql_primary_final tmkpspf
WHERE 
	product_name IN ('Chléb konzumní kmínový', 'Mléko polotučné pasterované')
GROUP BY tmkpspf.`year`,
	tmkpspf.product_name
ORDER BY tmkpspf.`year` ASC
LIMIT 2)
UNION 
(SELECT 
	`year`,
	product_name,
	AVG(industry_payroll) AS payroll_avg,
	AVG(product_price) AS price_avg,
	ROUND(AVG(industry_payroll) / AVG(product_price), 0)  AS can_buy
FROM t_michal_kroupa_project_sql_primary_final tmkpspf
WHERE 
	product_name IN ('Chléb konzumní kmínový', 'Mléko polotučné pasterované')
GROUP BY tmkpspf.`year`,
	tmkpspf.product_name
ORDER BY tmkpspf.`year` DESC 
LIMIT 2);
