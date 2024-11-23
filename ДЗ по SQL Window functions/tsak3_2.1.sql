select  sl.shopnumber,
		sh.city,
		sh.address,
		sum(sl.qty) over (partition by sl.shopnumber) as SUM_QTY,
		sum(sl.qty * g.price)  over (partition by sl.shopnumber) as SUM_QTY_PRICE
from sales sl 
join shops sh on sl.shopnumber = sh.shopnumber 
join goods g on sl.id_good = g.id_good 
where sl.date = '02-01-2016'
