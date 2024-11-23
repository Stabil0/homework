SELECT 
    s.first_name,
    s.last_name,
    s.salary,
    s.industry,
    s.first_name AS name_highest_sal
FROM salary s
JOIN (
    SELECT 
        industry,
        MAX(salary) AS max_salary
    FROM salary
    GROUP BY industry
) s_max ON s.industry = s_max.industry AND s.salary = s_max.max_salary;
