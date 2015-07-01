{Program to calculate the fatorial from a whole number}

PROGRAM fatCalc;
VAR
    i: INTEGER;
    fat,num: LONGINT;
BEGIN
    Writeln('Type a Whole number:');
    Readln(num);
    fat:= 1;
    FOR i:= 1 TO num DO
        BEGIN
            fat:= fat * i;
        END;
    Writeln('Fat of ',num,'= ',fat);
END.
