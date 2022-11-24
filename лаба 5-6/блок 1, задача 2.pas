var a: array [1..20] of integer;
p, i, k, c, b, s: integer; 
begin
  randomize;
  s:=0;
  p:=1;
  for i:=1 to 20 do
    begin
      a[i]:=-22+random(116); 
      write(a[i],' ');
      if (a[i] mod 2=0) and (i mod 2=1) then 
        k:=k+1;
      if (a[i] mod 2 <> 0) then
        p:= p * a[i];
    end;
write('Введите начало промежутка С: ');
readln(c);
write('Введите конец промежутка B: ');
readln(B);
  for i:=c to b do s:=s+a[i];
writeln ('Количество четных элементов, стоящих на нечетных местах = ',k);
writeln('Произведение нечетных элементов массива: ',p);
write('Сумма элементов принадлежащих промежутку равна: ',s);
end.
