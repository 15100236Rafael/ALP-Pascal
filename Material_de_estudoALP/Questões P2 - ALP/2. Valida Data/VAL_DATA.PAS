{Enunciado:
Elabore um algoritmo que leia uma data desmembrada em dia, mes e ano (ano
maior do que 0). E verifique se a data eh valida ou nao. Se a data for
invalida deve ser mostrada uma mensagem indicativa e oferecida a opcao do
usuario corrigir ou nao a data digitada. Se a data estiver correta,
mostrar a mensagem "data correta".}


program data_val;

var  dia, mes, ano, m29, ind_erro:integer;
     SimNao: char;

begin

ind_erro := 0;

{O loop nao deixa o programa avancar enquanto houver erro}
while ind_erro = 0  do
    begin

    m29:=28;
    ind_erro:= 0;
    writeln ('informe o dia, o mes e o ano');
    readln (dia); readln (mes); readln (ano);

    {verifica se o ano eh bissexto para tratar o mes de fevereiro}
    if (ano mod 4)   = 0 then m29 :=29;
    if (ano mod 100) = 0 then m29 :=28;
    if (ano mod 400) = 0 then m29 :=29;


    {indica erro se os valores de dia, mes e ano estiverem fora do possivel}
    if (dia < 01) or (dia > 31) or (mes < 01) or (mes > 12) or (ano < 1) then
    ind_erro := 1;


    {indica erro se o dia eh maior do que 30 nos meses que nao podem}
    if ((mes = 04) or (mes = 06) or (mes = 09) or (mes = 11))
    and (dia > 30) then
    ind_erro := 1;


    {indica erro se o dia do mes de fevereiro estiver errado}
    if (mes = 02) and (dia > m29) then
    ind_erro := 1;



    {Se nao ha erros, entao a data eh valida e o bloco 'while' nao se repete}
    if ind_erro = 0 then
      begin
      writeln ('Data valida');
      ind_erro := 1 {nao eh erro - serve para sair do loop}
      end

    {havendo erro eh possivel corrigir a data digitando 's'}
    else
        begin
        writeln ('Data invalida');
        writeln ('Gostaria de corrigir a data digitada?(s/n)');
        readln(SimNao);

        {O loop se repete se nao for digitado uma resposta esperada}
        while (SimNao <> 's') and (SimNao <> 'n') do
            Begin
            writeln('Tecla invalida. Gostaria de corrigir a data digitada?(s/n)');
            readln (SimNao);
            end;

        if SimNao = 's' Then
           ind_erro := 0;

       end;

end; {fim do bloco 'while' inicial}

readln(); {"trava" a tela para leitura}
end.



