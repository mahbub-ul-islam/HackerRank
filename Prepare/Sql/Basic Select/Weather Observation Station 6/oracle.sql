/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select DISTINCT city
from station
where substr(city, 1, 1) IN ('A', 'E', 'I', 'O', 'U')
order by city asc
;