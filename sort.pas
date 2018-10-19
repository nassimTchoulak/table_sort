# table_sort
a fusion sort algorithm &amp; iterative to optimize memory   //  max is the table length // written in pascal 
program testab2_0;
uses biblotab,crt;
const max=19;
var e,p,u,i,f,y,z,x,a:longint;

 var  T:Ttab; var    V:array[1..max]of longint;
begin
    clrscr;
    alea1d(max,T);
    for i:=1 to max do
    begin
        write(T[i],' | ');
    end;
    writeln;
    a:=1;
    while a<= (max div 2)  do
    begin
         x:=1;
         while x+2*a-1<=max do
         begin
              y:=x;
              z:=x+a;
              p:=x+2*a-1;
              u:=x+a-1;
              e:=x;
              for f:=e to p do
              begin

                   if (y<=u)and(z<=p) then
                   begin
                        if T[z]<T[y] then
                        begin
                        V[f]:=T[z];
                        z:=z+1;
                        end
                        else
                        begin
                        V[f]:=T[y];
                        y:=y+1;
                        end;
                   end
                   else
                   begin
                        if z>p then
                        begin
                          V[f]:=T[y];
                          y:=y+1;
                        end
                        else
                        begin
                           V[f]:=T[z];
                           z:=z+1;
                        end;
                   end;
              end;

              x:=x+2*a;
         end;

         for i:=1 to x-1 do
         begin
         T[i]:=V[i];
         V[i]:=0;
         end;

         if   max mod (2*a)<>0    then               (* le tri final  *)
         begin
            p:=max;
            z:=x;
            u:=x-1;
            y:=x-2*a;
            for f:=x-2*a to max do
              begin

                   if (y<=u)and(z<=p) then
                   begin
                        if T[z]<T[y] then
                        begin
                        V[f]:=T[z];
                        z:=z+1;
                        end
                        else
                        begin
                        V[f]:=T[y];
                        y:=y+1;
                        end;
                   end
                   else
                   begin
                        if z>p then
                        begin
                          V[f]:=T[y];
                          y:=y+1;
                        end
                        else
                        begin
                           V[f]:=T[z];
                           z:=z+1;
                        end;
                   end;
              end;

              for i:=x-2*a to max do
              begin
              T[i]:=V[i];
              V[i]:=0;
              end;
         end;



         a:=a*2;
    end;
    writeln;
    for i:=1 to max do
    begin
        write(T[i],' | ');
    end;
    readln;
end.
