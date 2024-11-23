select distinct 
    first_name,
    last_name,
    salary,
    industry,
    last_value(first_name) over (
        partition by industry 
        order by salary asc 
        rows between unbounded preceding and unbounded following 
    ) AS name_lowest_sal
FROM salary;
