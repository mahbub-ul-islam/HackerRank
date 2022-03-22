/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select 
    f1.x,
    f1.y
from 
    Functions f1
    join Functions f2
        on f1.x = f2.y and
            f1.y = f2.x
group by
    f1.x,
    f1.y
having 
    count(f1.x) > 1 or
    f1.x < f1.y
order by
    f1.x
;