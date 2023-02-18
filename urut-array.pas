program UrutArray;

uses crt;

const
  N: integer = 10;

var
  T: array[1..10] of integer;
  i, j: integer;

{ Membaca 10 input dari user untuk mengisi array T }
procedure readInput();
begin
  writeln('>> Masukan nilai-nilai array');

  for i := 1 to N do
    begin
      write('Nilai ke-', i, ': ');
      readln(T[i]);
    end;
end;

{ Menampilkan isi array T }
procedure showArray();
begin
  write('{ ');

  for i := 1 to N do
    begin
      write(T[i]);

      if i <> N then
        write(', ');
    end;

  writeln(' }');
end;

{ Mengurutkan array T }
function sortArray(): boolean;
var
  sorted: boolean = true;
  temp : integer;

begin
  for i := 1 to N do
    begin
      for j := 1 to N - 1 do
        begin
          if T[j] > T[j + 1] then
            begin
              temp := T[j];
              T[j] := T[j + 1];
              T[j + 1] := temp;

              sorted := false;
            end;
        end;
    end;

    sortArray := sorted;
end;

begin
  clrscr;

  writeln('PROGRAM URUT ARRAY');
  writeln('==================');
  writeln;

  readInput();

  writeln;

  write('Isi array: ');
  showArray();

  writeln;

  if sortArray() then
    writeln('Array sudah terurut')
  else
    begin
      write('Isi array setelah diurutkan: ');
      showArray();
    end;

  readln;
end.
