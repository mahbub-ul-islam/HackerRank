/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/


select
    co.continent,
    floor(avg(ci.population))
from
    CITY ci,
    COUNTRY co
where
    ci.countrycode = co.code
group by
    co.continent;

