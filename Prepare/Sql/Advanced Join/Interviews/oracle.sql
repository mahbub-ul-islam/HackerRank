/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select 
    con.contest_id,
    con.hacker_id,
    con.name,
    sum(sst.total_submission),
    sum(sst.total_accepted_submission),
    sum(vst.total_view),
    sum(vst.total_unique_view)
from 
    Contests con
    left join Colleges col
        on con.contest_id = col.contest_id
    left join Challenges cha
        on col.college_id = cha.college_id
    left join (
			select 
				challenge_id, 
				sum(total_views) as total_view, 
				sum(total_unique_views) as total_unique_view
			from View_Stats
			group by challenge_id
        ) vst
        on cha.challenge_id = vst.challenge_id
    left join (
			select 
				challenge_id, 
				sum(total_submissions) as total_submission, 
				sum(total_accepted_submissions) as total_accepted_submission
			from Submission_Stats
			group by challenge_id
        ) sst
        on cha.challenge_id = sst.challenge_id
group by
    con.contest_id,
    con.hacker_id,
    con.name
having
    (
        sum(sst.total_submission) + 
        sum(sst.total_accepted_submission) + 
        sum(vst.total_view) + 
        sum(vst.total_unique_view)
    ) > 0
order by 
    con.contest_id;