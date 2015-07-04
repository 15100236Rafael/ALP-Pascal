{Program to combine an array of 6 numbers in groups of four
Author: Rafael.Santos}
PROGRAM combina4;
VAR a, b, c, d, e: INTEGER;
    seq: ARRAY [1..6] OF INTEGER;
BEGIN
    Writeln('Type 6 numbers');
    FOR e:=1 TO 6 DO
        BEGIN
            write('Number ', e, ':');
            readln(seq[e]);
        END;
    FOR a:=1 TO 3 DO
        FOR b:=(a+1) TO 4 DO
            FOR c:=(b+1)TO 5 DO
                FOR d:=(c+1)TO 6 DO
                    writeln(seq[a],' ',seq[b],' ',seq[c],' ',seq[d]);
END.
