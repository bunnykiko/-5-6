var b, n: integer;
    a: array[1..20] of integer;
begin 
  read(n);
  for b:=1 to n do 
    read(a[b]);
  for b:=1 to n do 
  if a[b]<0 then 
    a[b]:=a[b]*a[b]
  else 
    a[b]:=0;
  for b:=1 to n do
write(a[b],' ');
end.

