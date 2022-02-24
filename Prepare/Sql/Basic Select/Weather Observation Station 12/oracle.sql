/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select DISTINCT city
from station
where
    lower(substr(city, 1, 1)) NOT IN ('a', 'e', 'i', 'o', 'u')
    and
    lower(substr(city, -1, 1)) NOT IN ('a', 'e', 'i', 'o', 'u')
order by city asc
;
