{Verificar se um numero maior do que 9 possui primeiro e ultimo digitos
iguais ou nao - nao precisa validar valor de entrada}

{Teste de mesa esperado (dividindo por 10 por ser base decimal)

1074 mod 10 = 107 sobra 4 -> ultimo = 4

1074 div 10 = 107 -> divide de novo
107  div 10 = 10 --> divide de novo
10   div 10 = 1 ---> primeiro = 1.
Nota-se o fim de um loop dividindo no minimo um valor igual a 10.}



program pri_ult;

var num, pri, ult: integer;


begin

writeln('digite um numero maior do que 9:');
readln(num);

ult := num mod 10;

while num >= 10  do
      begin
      num := num div 10;
      pri := num;
      end;

{as duas seguintes linhas nao sao pedidas, mas serve como teste para as variaveis}
writeln('O primeiro numero ‚:', pri);
writeln('O  £ltimo  numero ‚:', ult);


if pri = ult Then
   writeln('O primeiro e ultimo digitos sao iguais')
else
   writeln('O primeiro e ultimo digitos sao diferentes');
   readln;

end.
