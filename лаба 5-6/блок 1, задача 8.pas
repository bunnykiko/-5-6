const n = 20; m = 10;
var a: array[1..n] of integer;
    b: array[0..m-1] of integer;
    i, mx: integer;
begin
  randomize;
  write('Массив:'); 
  {mx:=0;}
  for i:=1 to n do 
    begin
      a[i]:=Random(m); 
      Write(' ', a[i]);
      Inc(b[a[i]]); 
      if b[mx]<b[a[i]] then 
        mx:=a[i];
    end; 
  writeLn;
  write('Наиболее частые (',b[mx],') значения:');
  for i:=0 to m-1 do 
    if b[mx]=b[i] then 
      write(' ', i);
end.
