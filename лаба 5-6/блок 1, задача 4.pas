var A: array [1..30] of integer;
    B: array[1..30] of integer;
    i, j: integer; 
begin
   randomize;
  for i:=1 to 30 do
    begin
      a[i]:=random(-99, 67); 
      write(a[i],' ');
    if A[i] mod 2 = 0 then
      begin
        inc(j);
        B[j]:=A[i];
      end;
    end;
writeln;
write('Массив B: ');
 for i:=1 to j do
write(B[i],' ');
end.

