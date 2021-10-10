/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT *
FROM (
    SELECT (Months * Salary), COUNT(*)
    FROM Employee
    GROUP BY (Months * Salary)
    ORDER BY (Months * Salary) DESC
    )
WHERE ROWNUM = 1;