{Program to check if the first and last digits of
a number are the same or not}
PROGRAM CheckDigits;
VAR
    las, fst: INTEGER;
    num: LONGINT;
BEGIN
    Write('Digite um Número maior que nove: ');
    Readln(num);
    WHILE num <= 9 DO
        BEGIN
            Write('Digite um Número maior que nove: ');
            Readln(num);
        END;
    las:= num MOD 10;
    WHILE num >= 10 DO
        BEGIN
            num:= num DIV 10;
            fst:= num;
        END;
    Writeln(fst,' ',las);
END.
