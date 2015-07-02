{Program to merge Vectors into one}
{Program to merge vectors}
PROGRAM mergeVect;
VAR
    vet1, vet2, vet3: ARRAY [1..4] OF integer;
    vet4: ARRAY [1..12] OF integer;
    i, j, k, l, m, min: integer;

{Todo : sort the small vectors
Create the procedure to sorte the small vectors}
PROCEDURE criaVet(VAR vet: ARRAY OF integer);
    VAR
        i: integer;
    BEGIN
    FOR i:= 1 TO 4 DO
        vet[i]:= random(30)+1;
    writeln(vet[1],' ',vet[2],' ',vet[3],' ',vet[4],'.');
    END;
BEGIN
    write('First Vector:');
    criaVet(vet1);
    write('Second Vector:');
    criaVet(vet2);
    write('Third Vector:');
    criaVet(vet3);
    j:= 1; k:= 1; l:= 1; m:= 1;

    WHILE m < 13 DO
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
    FOR i:=1 TO 12 DO
        BEGIN
            IF vet4[i]<>0 THEN write(vet4[i],' ');
        END;
    Readln();

END.