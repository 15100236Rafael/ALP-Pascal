{Test Program
Author: Rafael.Santos}

PROGRAM prog1;

VAR
    num,ult,pri: INTEGER;
BEGIN
    Writeln('Type a whole number bigger than 9:');
    Readln(num);
    ult:= num MOD 10;
    WHILE num >=10 DO
        BEGIN
            num:= num DIV 10;
            pri:= num;
        END;
    Writeln(pri,' ',ult);
    IF num = pri THEN
        Writeln('Both first and last digit, are equals.');
    ELSE
        Writeln('They are different.');
END.
