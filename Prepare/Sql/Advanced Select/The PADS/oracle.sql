/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

-- first problem
select 
    CONCAT(name, 
           concat('(', 
                  concat(substr(occupation, 1, 1), ')')))
from occupations
order by name asc
;

-- second problem
select 
    concat('There are a total of ', 
           concat(count(occupation), 
                  concat(' ', 
                        concat(lower(occupation), 's.'))))
from occupations
-- to group them by occupation for counting
group by occupation
-- to order them by count 
-- and if that same order them by alphabetically
order by count(occupation), occupation asc
;