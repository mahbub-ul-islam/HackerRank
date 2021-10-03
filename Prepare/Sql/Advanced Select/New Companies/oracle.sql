/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/


SELECT 
    c.company_code,
    c.founder,
    count(distinct lm.lead_manager_code),
    count(distinct sm.senior_manager_code),
    count(distinct m.manager_code),
    count(distinct e.employee_code)
FROM 
    Company c, 
    Lead_Manager lm, 
    Senior_Manager sm, 
    Manager m, 
    Employee e
WHERE
    c.company_code = lm.company_code and
    c.company_code = sm.company_code and
    c.company_code = m.company_code and
    c.company_code = e.company_code
GROUP BY c.company_code,c.founder
ORDER BY c.company_code ASC
;