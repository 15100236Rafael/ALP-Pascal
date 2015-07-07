{Valida Data
Author: Rafael.Santos}
PROGRAM validaData;
VAR
    d,m,a, valid: INTEGER;
    resp: char;
    c: ARRAY[1..12] OF INTEGER;
BEGIN
    {inicializa dias do mês}
    c[1]:= 31;c[2]:=28;c[3]:=31;c[4]:=30;c[5]:=31;c[6]:=30;
    c[7]:=31;c[8]:=31;c[9]:=30;c[10]:=31;c[11]:=30;c[12]:=31;
    {Entra com a data de nascimento}
    valid:=1
    WHILE valid:=1 DO
        BEGIN
            Writeln('Digite a data.');
            Write('Dia (dd):');
            Readln(d);
            Write('Mês (mm):');
            Readln(m);
            Write('Ano (aaaa):');
            Readln(a);

            {Testa o ano para caso de ano Bissexto}
            IF (a MOD 4 = 0) OR (a mod 100 > 0) AND (a mod 400 < 0) THEN
                c[2]:=29;
            {Testa para meses maiores que 12 e ou 0}
            IF (m > 12) OR (m <= 0) THEN
                BEGIN
                    valid:= 1;
                END;
            IF (d > c[m]) OR (d <= 0) THEN
                BEGIN
                    valid:= 1;
                END
            ELSE valid:= 0;
            IF valid:=1 THEN
                while (resp <> 's') and (resp <> 'n') or (resp <> 'S') and (resp <> 'N') do
                     BEGIN
                        Writeln('Data inválida.');
                        Writeln('Deseja corrigir? (s/n)');
                        readln(resp);
                        end;
        END;
END.