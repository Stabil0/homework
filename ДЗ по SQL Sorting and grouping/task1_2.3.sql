select seller_id,
  	   string_agg(category, ' - ' order by category) as category_pair
from sellers s 
where date_reg between '2022-01-01' and '2022-12-31'
group by seller_id
having count(category) = 2 and sum(revenue) > 75000