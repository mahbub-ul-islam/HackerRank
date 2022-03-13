/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select 
    w.id, 
    wp.age,
    w.coins_needed,
    w.power
from 
    Wands w
    join Wands_Property wp
        on w.code = wp.code
where
    wp.is_evil = 0 and
    w.coins_needed = (
                        select 
                            min(coins_needed)
                        from 
                            Wands w2 
                            join Wands_Property wp2 
                                on w2.code = wp2.code
                        where 
                            w.power = w2.power and 
                            wp.age = wp2.age
                    )
order by
    w.power desc,
    wp.age desc
;

