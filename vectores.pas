Unit vectores;
interface
Const k=14;
sintomas : array [1..k] of string = ('Tos','Dolor de garganta',
'Estornudos', 'Fatiga','Dolor muscular','Congestion nasal','Fiebre',
'Dolor de cabeza','Ojos llorosos','Picazon en la nariz','Nauseas',
'Vomitos','Dificultad para respirar','Sibilancia(sonido silbante y chillon durante la respiracion)');
type
T_vector = array [1..k] of boolean;
procedure inicializarv (var v:T_vector);
procedure consulta_sintomas(var v:t_vector);
Implementation
USES CRT;
procedure inicializarv (var v:T_vector);
var i: 1..k;
begin
for i:=1 to k do
v[i]:= false;
end;
procedure consulta_sintomas(var v:t_vector);
var i: 1..k; resp:char;
begin
clrscr;
WRITELN('INGRESE S/N: ');
WRITELN;
for i:=1 to k do
begin
write(sintomas[i], ': ');
readln (resp);
if upcase(resp) = 'S' then v[i]:= true;
end;
end;
end.