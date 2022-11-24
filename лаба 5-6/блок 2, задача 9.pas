var a: array[1..20] of integer;
    i, k, m, n, min, h: integer;
begin
  write('Массив:');
  n:=20;
  for i:=1 to n do 
    begin
      a[i] := - 100 + random(201);
      write (a[i], ' ')
    end;	
  for i:=1 to n do 
    if a[i]>0 then 
      begin
        m:=a[i];
        k:=i;
        break
      end;
  for i:=k to n-1 do
    a[i]:=a[i+1];
    min:=a[1];
  for i:=1 to n-1 do 
   if (a[i]<min) then 
     begin
      min:=a[i];
      h:=i;
     end;
  if m<>min then 
    begin
      for i:=h to n-2 do
        a[i]:=a[i+1];
        writeln('new');
      for i:=1 to n-2 do  
        write(a[i], ' ');
    end
  else 
    for i:=1 to n-1 do  
write(a[i], ' ');
end.
