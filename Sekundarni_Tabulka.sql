CREATE TABLE t_michal_kroupa_project_SQL_secondary_final AS(
	SELECT
		tmk.*,
		e.GDP,
		e.gini,
		e.population,
		e.country
	FROM economies e
	JOIN t_michal_kroupa_project_sql_primary_final tmk 
		ON tmk.`year` = e.`year`
	WHERE
		e.country IN ('Czech Republic', 'Slovakia', 'Germany', 'Austria', 'Poland')
		AND e.GDP IS NOT NULL
);

