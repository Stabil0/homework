select product_category,
	   sum(o.order_amount)
from products_2 p 
join orders_2 o on p.product_id = o.product_id 
group by product_category
order by sum(o.order_amount) desc
limit 1
