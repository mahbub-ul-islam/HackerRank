/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

-- select only column which need to be displayed
select doctor, professor, singer, actor 
from
--     create a new table with name, occupation and occupation count
    (select name, 
            occupation, 
--             count the occupation with partition
            row_number() over (partition by occupation order by name)
                as rownumber
     from occupations
    )
-- create new table with new column name with PIVOT
pivot 
    (max(name) for occupation IN (
--                              column name assinging
                                    'Doctor' AS doctor,
                                    'Professor' AS professor,
                                    'Singer' AS singer,
                                    'Actor' AS actor
                                 )
    )
order by rownumber
;