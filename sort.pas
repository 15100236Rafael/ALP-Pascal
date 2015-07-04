{Sort numbers
Author: Rafael.Santos}

PROGRAM sortNumbers;
USES crt;
VAR j,i,n,k,c : INTEGER;
    cards: ARRAY [1..6] OF INTEGER;
BEGIN
    Writeln('Type 6 whole numbers for sorting:');
    FOR c:=1 TO 6 DO
        Read(cards[c]);
    FOR i:= 1 TO 6 DO
        FOR j:=i+1 TO 6 DO
            BEGIN
                IF cards[i] > cards[j] THEN
                    BEGIN
                        k:= cards[i];
                        cards[i]:= cards[j];
                        cards[j]:= k;
                    END;
            END;
    Writeln(cards[1],' ',cards[2],' ',cards[3],' ',cards[4],' ',cards[5],' ',cards[6]);
END.