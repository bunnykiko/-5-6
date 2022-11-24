const N = 20;
var a: array[1..N] of integer;
    min, max, i: byte;
    b: integer;
begin
  randomize;
  write('Исходный массив: ');
  for i := 1 to N do
  begin
    a[i] := random(-50, 50);
    write(a[i], ' ');
  end;
  writeln;
  Write('Полученный массив: ');
  min:= 1;
  max:= 1;
  for i := 2 to N do
  begin
    if a[i] < a[min] then
      min := i
        else
    if a[i] > a[max] then
      max := i;
  end;
  b := a[min];
  a[min] := a[max];
  a[max] := b;
  for i := 1 to N do
    write(a[i], ' ');
  writeln;
end.
