/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select round(sum(LAT_N), 4)
from STATION
where 
    LAT_N > 38.7880 and 
    LAT_N < 137.2345
;