select city,
	   count(id) as "Количество",
	   case 
	   	when age between 0 and 21 then 'young'
	   	when age between 21 and 49 then 'adult'
	   	when age >= 50 then 'old'
	   end as "Возраст"   
from users u 
group by city, age
	   