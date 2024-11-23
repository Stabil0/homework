SELECT
	 date,
	 city,
	    round(SUM(sl.qty * g.price) / SUM(SUM(sl.qty * g.price)) OVER (PARTITION BY sl.date),2) AS SUM_SALES_REL
FROM sales sl
JOIN shops sh ON sl.shopnumber = sh.shopnumber
JOIN goods g ON sl.id_good = g.id_good
where g.category = 'ЧИСТОТА'
group by date, city
