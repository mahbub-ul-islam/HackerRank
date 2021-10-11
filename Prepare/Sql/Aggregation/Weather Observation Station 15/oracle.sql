/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select round(LONG_W, 4)
from (
    select LONG_W
    from STATION
    where LAT_N < 137.2345
    order by LAT_N desc
)
where rownum = 1
;