/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select round(
            (ABS(min(LAT_N) - max(LAT_N))
            + ABS(min(LONG_W) - max(LONG_W))), 4)
from STATION;