select name,
	    avg(o.shipment_date - o.order_date) as "average_waiting_time",
	    sum(o.order_ammount) as "order_amount_sum"
from customers c 
join orders o on c.customer_id = o.customer_id
group by c.customer_id 
order by sum(o.order_ammount) desc