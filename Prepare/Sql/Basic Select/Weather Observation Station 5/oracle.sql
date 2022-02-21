/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select city, length(city)
from (
    select city, length(city)
    from station 
    order by length(city) asc, city asc )
where rownum < 2
;

select city, length(city)
from (
    select city, length(city)
    from station 
    order by length(city) desc, city desc )
where rownum < 2
;