var a: array [1..10] of integer; 
i, e, j, g, f, Min, MinI:integer; 
begin
  randomize;
  for i := 1 to 10 do 
    begin	
      write('a[', i, ']=');
      read(a[i]);
    end;
  for i:=2 to 10 do
  if a[i]<a[i-1] then 
    f:=1;
  if f=0 then 
    writeln('элементы массива упорядочены по возрастанию ')
    else 
      writeln('элементы массива не упорядочены по возрастанию ');
  for i:= 2 to 10 do 
    begin
      e:=A[i];
      j:=1; 
      while (e>a[j]) do 
        Inc(j); 
      for g:=i-1 downto j do 
        a[g+1]:=a[g]; 
        a[j]:=e; 
    end;
  for i:=1 to 10 do
write(a[i],' ');
end.
