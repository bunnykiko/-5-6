﻿const m = 100;
var a: array[1..m] of integer;
    i, j, k, mx, n: integer;
begin
   write('число элементов массива n = ');
  readln(n);
  writeln('массив:');
  randomize;
  for i:=1 to n do 
    begin
      a[i]:= random(-10,10);
      write(a[i],' ');
    end;
writeln;
k:=1; 
mx:=0; 
i:=1;
  repeat
    if a[i+1]>=a[i] then 
      k:=k+1
    else 
  begin
    if k>mx then 
      mx:=k;
      k:=1;
  end;  
  i:=i+1;
  until 
  i=n;
    if k>mx then 
      mx:=k;
writeln('максимальная длина монот. послед. = ', mx);
  for i:=1 to n-1 do
  for j:=i+1 to n do
  if a[j]<a[i] then 
    swap(a[j],a[i]);
writeln;
end.
