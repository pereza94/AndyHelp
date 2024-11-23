Unit enfermedades;
interface
uses
matriz, vectores;
procedure POSIBLES_ENFERMEDADES(m:T_matriz;v:T_vector);
implementation
USES CRT;
const
diagnostico: array [1..g] of string= ('Resfriado comun', 'Gripe',
'Alergia', 'Migraña', 'Enfermedad pulmonar obstructiva crónica(EPOC)',
'Bronquitis aguda', 'Rinitis alérgica', 'Virus sincitial respiratorio(VSR)',
'Sinusitis', 'Cefalea tensional','Gastroenteritis','Enfermedad pulmonar intersticial',
'Intoxicación alimentaria','Embolia pulmonar','Neumonía');
function no_sintomas (var v:t_vector):boolean;
var
   i:integer;
     begin
       i=0;
       no_sintomas:=true;
     end;

while no_sintomas and i<=n;
      if v(i) then;
      no_sintomas:=false;
      else
      i:=i+1
     end;

end;
function todos_sintomas (var v:t_vector);
var
   i:integer;
   begin
todos_sintomas :=verdadero;
while todos_sintomas and i;
 while todos_sintomas and i<=n;
 if v(i) then;
    todos_sintomas:=false;
  else
      i:=i+1;
  end;
procedure POSIBLES_ENFERMEDADES(m:T_matriz;v:T_vector);
var
   cont:integer
     diag:sring
   begin
   conradoe:=0
   diag=''
   inicializarv(v);
   consulta_sintomas(v);
   inicializar (m);
   if no_sintomas(v)then
   writeln ('Usted no tiene ningun sintoma');
   else
       if todos_sintomas(v) then
       writeln ('usted marco todos los sintomas, le recomendamos ir con un medico de inmediato');
       else
       for j := 1 to g do
           for i:= 1 to n do
               if m(i,j)and v(i);
                  cont:=cont+1;

           case j of
                  1,2: if cont>=4 then
                          diag:= diag+diagnostico(j);
                  3,6,9,12,14:if cont>=3 then
                                 diag:=diag+diagnostico(j);
                  4,5,7,8,10,11,13,15:if cont>=2 then
                                         diag:=diag+diagnostico(j);
             end;
            cont:=0

            if diag=('') then
               writeln 'no se le diagnosticar una enfermeda, en caso de que los sintomas persistan le remondamos ir a un medico'
            else
                writeln 'su diagnostico es', diag,'. Recuerde que este diagnostico es no es 100% preciso, por lo que recomendados que consulte con un profesional'
end;
end.                                              