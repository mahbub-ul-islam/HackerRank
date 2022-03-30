/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

-- select * from Students;
-- select * from Friends;
-- select * from Packages;



select
    name
from (
    select
        s.name,
        f.friend_id,
        p.salary
    from
        Students s
        join Friends f
            on (s.id = f.id)
        join Packages p
            on (s.id = p.id)
    ) sfull
where
    salary < (
            select p2.salary
            from Packages p2
            where friend_id = p2.id
        )
order by (
        select p2.salary
        from Packages p2
        where friend_id = p2.id
    ) asc;