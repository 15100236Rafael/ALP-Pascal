{Program to merge Vectors into one}
{Program to merge vectors
Author: Rafael.Santos}

PROGRAM mergeVect;
VAR
    vet1, vet2, vet3: ARRAY [1..4] OF integer;
    vet4: ARRAY [1..12] OF integer;
    j, k, l, m, min: integer;
    vet4 := (0,0,0,0,0,0,0,0,0,0,0,0);

{Todo : sort the small vectors
Create the procedure to sorte the small vectors}
PROCEDURE criaVet(VAR vet: ARRAY OF integer);
    VAR
        i: integer;
    BEGIN
    FOR i:= 1 TO length(vet) DO
        BEGIN
            vet[i]:= random(30)+1;
            write(vet[i],' ');
        END;
    END;
PROCEDURE sortVet(VAR vet: ARRAY OF integer);
    VAR j,i,k : INTEGER;
    BEGIN
        FOR i:= 1 TO length(vet) DO
            BEGIN
                FOR j:=i+1 TO length(vet) DO
                    BEGIN
                        IF vet[i] > vet[j] THEN
                            BEGIN
                                k:= vet[i];
                                vet[i]:= vet[j];
                                vet[j]:= k;
                            END;
                    END;
            IF vet[i] <> 0 THEN write(vet[i],' ')
                        ELSE write('');
            END;
    END;
BEGIN
    write('First Vector:');
    criaVet(vet1);
    writeln();
    write('Second Vector:');
    criaVet(vet2);
    writeln();
    write('Third Vector:');
    criaVet(vet3);

    j:= 1; k:= 1; l:= 1; m:= 1;

    WHILE m < length(vet4) DO
        BEGIN
            min:= vet1[j];
            IF vet2[k] < min THEN min:= vet2[k];
            IF vet3[l] < min THEN min:= vet3[l];

            IF vet1[j] = min THEN j:= j+1;
            IF vet2[k] = min THEN k:= k+1;
            IF vet3[l] = min THEN l:= l+1;

            vet4[m]:= min;
            m:= m+1;
        END;
    j:=1;
    WHILE vet4[j] <> 0 DO
        BEGIN
            write(vet4[j],' ');
        END;
    Readln();
END.