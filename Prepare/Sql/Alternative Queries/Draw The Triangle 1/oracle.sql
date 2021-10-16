/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

set serveroutput on;

declare
    star clob;
begin
    for i in reverse 1..20 loop
        star := '';
        for j in 1..i loop
            star := star || '*' || ' ';
        end loop;
        dbms_output.put_line(star);
    end loop;
end;
/