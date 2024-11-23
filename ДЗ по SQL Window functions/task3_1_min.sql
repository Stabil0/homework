SELECT 
    s.first_name,
    s.last_name,
    s.salary,
    s.industry,
    s.first_name AS name_smallest_sal
FROM salary s
JOIN (
    SELECT 
        industry,
        min(salary) AS min_salary
    FROM salary
    GROUP BY industry
) s_min ON s.industry = s_min.industry AND s.salary = s_min.min_salary;
