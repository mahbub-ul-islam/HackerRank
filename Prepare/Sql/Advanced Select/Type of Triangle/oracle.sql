/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select
    case
        -- need to check for 'Not A Triangle' first
        when a + b <= c or b +c <= a or a + c <= b then 'Not A Triangle'    
        when a = b and b = c then 'Equilateral'
        when a = b or b = c or a = c then 'Isosceles'
        else 'Scalene'
    END
from triangles;