Unit menu;
{$CODEPAGE UTF8}
interface
uses
crt, matriz, vectores, enfermedades;
procedure menu_principal;
implementation
procedure menu_principal;
var OPCION:byte;
m:T_matriz;
v:T_vector;
begin
inicializar(m);
REPEAT
CLRSCR;
writeln(' 1- DIAGNOSTICAR');
writeln();
writeln(' 0- SALIR');
writeln();
readln(OPCION);
IF OPCION = 1 THEN
BEGIN
inicializarv(v);
consulta_sintomas (v);
writeln('DIAGNOSTICANDO.....'); READKEY;
// DETERMINAR POSIBLES_ENFERMEDADES
end;
UNTIL OPCION = 0;
end;
end.      