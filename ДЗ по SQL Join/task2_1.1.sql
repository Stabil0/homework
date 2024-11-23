select name,
	    (o.shipment_date - o.order_date) as waiting_time
from customers c 
join orders o on c.customer_id = o.customer_id
order by  (o.shipment_date - o.order_date) desc 
limit 1
