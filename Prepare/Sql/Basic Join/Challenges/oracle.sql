/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/



select
    h.hacker_id,
    h.name,
    count(c.challenge_id) as c_count
from 
    Hackers h
    Join Challenges c
        on (h.hacker_id = c.hacker_id)
group by 
    h.hacker_id,
    h.name
having 
    count(c.challenge_id) = (
        select *
        from (
            select count(c2.challenge_id) as c_max
            from Challenges c2
            group by c2.hacker_id
            order by c_max desc
        )
        where rownum = 1
    ) 
    OR count(c.challenge_id) in (
        select distinct c_compare AS c_unique
        from (
            select
                h2.hacker_id, 
                h2.name, 
                count(challenge_id) as c_compare
            from Hackers h2
                join Challenges c
                on c.hacker_id = h2.hacker_id
            group by 
                h2.hacker_id, 
                h2.name
         ) counts
         group by c_compare
         having count(c_compare) = 1
    )
order by
    c_count desc,
    h.hacker_id asc
;

