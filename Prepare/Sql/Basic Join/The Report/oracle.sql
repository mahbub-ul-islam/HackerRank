

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select
    case
        when
            g.grade > 7
            then s.name
            else null
    end as names,
    g.grade,
    s.marks
from
    Students s,
    Grades g
where
    s.marks between g.min_mark and g.max_mark
order by 
    g.grade desc,
    names asc,
    s.marks asc
;