/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select
    round(
        SQRT(
            POWER(max(LAT_N) - min(LAT_N), 2) +
            POWER(max(LONG_W) - min(LONG_W), 2)
        ), 4)
from STATION;