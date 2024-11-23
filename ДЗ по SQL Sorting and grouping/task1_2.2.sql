select seller_id,
	   (NOW()::date - min(date_reg)) / 30 as month_from_registration,
	   max(delivery_days) - min(delivery_days) as max_delivery_difference
from sellers s 
group by seller_id
having SUM(revenue) < 50000 AND COUNT(DISTINCT category) <= 1
order by seller_id