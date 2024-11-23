SELECT seller_id, 
	count(category) as total_categ,
	round(avg(rating),2) as avg_rating,
	sum(revenue) as total_revenue,
	CASE 
        WHEN SUM(revenue) > 50000 AND COUNT(DISTINCT category) > 1 THEN 'rich'
        ELSE 'poor'
    END AS seller_type
FROM public.sellers
group by seller_id