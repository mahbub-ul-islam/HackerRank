/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select 
    h.hacker_id,
    h.name,
    sum(score) as total_score
from
    Hackers h
    Inner Join (
                select hacker_id, max(score) as score
                from Submissions
                group by challenge_id, hacker_id
        ) max_score
        on h.hacker_id = max_score.hacker_id
group by 
    h.hacker_id, 
    h.name
having
    sum(score) > 0
order by
    total_score desc,
    h.hacker_id
;
    
    
    