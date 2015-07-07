{Program to combine items from an Array}
PROGRAM combineArr;
VAR
    i, a,b,c: INTEGER;
    arr : ARRAY [1..9] OF INTEGER;
BEGIN
    Writeln('Digite 9 números inteiros para serem combinados:');
    FOR i:= 1 TO 9 DO
        BEGIN
            Write('posição',i,': ');
            Readln(arr[i]);
        END;
    Writeln('Números digitados:');
    Writeln(arr[1], ' ',arr[2], ' ',arr[3], ' ',arr[4], ' ',arr[5], ' ',arr[6],
            ' ',arr[7], ' ',arr[8], ' ',arr[9]);
    Writeln('Combinações:');
    FOR a:= 1 TO 9 DO
        FOR b:= a + 1 TO 9 DO
            FOR c:= b + 1 TO 9 DO
            Writeln(a,' ',b,' ', c);
END.
