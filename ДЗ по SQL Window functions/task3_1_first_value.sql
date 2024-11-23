SELECT  DISTINCT
    s.first_name,
    s.last_name,
    s.salary,
    s.industry,
    first_value(first_name) over 
    	(partition by industry order by salary desc) as name_highest_sal
FROM salary s
