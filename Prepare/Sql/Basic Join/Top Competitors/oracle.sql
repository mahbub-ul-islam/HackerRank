
/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select
    h.hacker_id,
    h.name
from
    Hackers h
    join Submissions s
        on h.hacker_id = s.hacker_id
    join Challenges c
        on s.challenge_id = c.challenge_id
    join Difficulty d
        on c.difficulty_level = d.difficulty_level
where
    d.score = s.score
group by
    h.hacker_id,
    h.name
having 
    count(s.hacker_id) > 1
order by count(s.hacker_id) desc, h.hacker_id asc;