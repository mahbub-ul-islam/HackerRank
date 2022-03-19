/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/



select
    ci.name
from
    CITY ci,
    COUNTRY co
where
    ci.countrycode = co.code and
    co.continent = 'Africa'
;