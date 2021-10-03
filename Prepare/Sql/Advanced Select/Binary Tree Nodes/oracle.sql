/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT N, 
    CASE 
        WHEN P IS NULL THEN 'Root' 
        -- find the P in maintable as N and count its occurence 
        -- to know its inner
        WHEN(SELECT COUNT(*) FROM BST WHERE P = Main.N) > 0 THEN 'Inner'
        ELSE 'Leaf'
    END
FROM BST Main
ORDER BY N;

