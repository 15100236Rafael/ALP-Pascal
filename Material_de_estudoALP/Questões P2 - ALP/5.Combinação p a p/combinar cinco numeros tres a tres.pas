Program Pzim ;

var v,w,x, y,z,cont : integer;
var vet: array [1..5] of integer;

 Begin
 
 writeln ('Digite os 5 valores');
 
 vet[1]:=v;
 vet[2]:=w;
 vet[3]:=x;
 vet[4]:=y;
 vet[5]:=z;
 
 
 for cont:=1 to 5 do

 readln (vet[cont]);
 
 	for v:= 1 to 3 do
 
 		for w:= v + 1 to 4 do
	 
	 		for x:= w + 1 to 5 do
	 		
	 		
		
 writeln (vet[v],' , ',vet[w],' , ',vet[x],'');

 End.
