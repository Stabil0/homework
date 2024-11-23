select name,
	   count(case when o.order_status = 'Cancel' then 1 end) as cancel,
	   count(case when extract(day from (o.shipment_date - o.order_date)) > 5 then 1 end) as "time>5",
	   count(o.order_id) as all_orders
from customers c 
join orders o on c.customer_id = o.customer_id
group by c.customer_id 
order by all_orders desc