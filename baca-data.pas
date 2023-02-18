program BacaData;

uses crt, sysutils;

const
  filename: string = 'TeksUjikom2.txt';

var
  F: text;
  data: string;

begin
  clrscr;

  { Mengecek apakah file ada atau tidak }
  if fileExists(filename) then
    begin
      { Mengubah file_content menjadi sebuah variabel file }
      assign(F, filename);

      { Membuka file untuk dibaca }
      reset(F);

      writeln('>> Isi file ', filename);

      {
        Melakukan perulangan untuk mengambil data setiap baris
        selama proses membaca belum mencapai akhir dari file (eof)
      }
      while not eof(F) do
        begin
          readln(F, data);
          writeln(data);
        end;

      { Menutup file_content }
      close(F);
    end
  else
    writeln('File ', filename + ' tidak ditemukan');

  readln;
end.
