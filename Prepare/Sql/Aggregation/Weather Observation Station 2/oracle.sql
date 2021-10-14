/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select 
    round(sum(LAT_N), 2), 
    round(sum(LONG_W), 2)
from STATION;