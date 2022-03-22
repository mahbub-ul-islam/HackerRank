/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

set serveroutput on;

declare
    v_temp clob;
    v_flag boolean := true;
    
begin

    for i in 2..1000 loop
        v_flag := true;
        
        for j in 2..(i-1) loop
            if mod(i, j) = 0 then
                v_flag := false;
                exit;
            end if;
        end loop;
        
        if v_flag = true then
            v_temp := v_temp || i || '&';
        end if;
        
    end loop;
    
    v_temp := substr(v_temp, 1, length(v_temp)-1);
    dbms_output.put_line(v_temp);
end;
/