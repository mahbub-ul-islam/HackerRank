/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select
    Start_Date,
    min(End_Date)
from (
        select
            Start_Date
        from
            Projects
        where
            Start_Date not in (select End_Date from Projects)
    ) p_start,
    (
        select
            End_Date
        from
            Projects
        where
            End_Date not in (select Start_Date from Projects)
    ) p_end
where
    Start_Date < End_Date
group by
    Start_Date
order by
   (min(End_Date) - Start_Date) asc,
   Start_Date asc;




    