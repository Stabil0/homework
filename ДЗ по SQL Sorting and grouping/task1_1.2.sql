select category, 
	    ROUND(avg(price),2) as "avg_price"
from products p 
where name ILIKE '%hair%' OR name ILIKE '%home%'
group by category 