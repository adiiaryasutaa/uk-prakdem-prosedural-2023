program TulisData;

uses crt;

const
  filename: string = 'TeksUjikom2.txt';

var
  file_content: text;

begin
  { Mengubah file_content menjadi sebuah variabel file }
  assign(file_content, filename);

  { Membuka file_content yang telah menjadi sebuah variabel file untuk ditulis }
  rewrite(file_content);

  { Menuliskan teks ke dalam file_content }
  writeln(file_content, 'Saya sedang mengikuti Uji Kompetensi Rekayasa Perangkat Lunak');

  { Menutup file_content }
  close(file_content);

  clrscr;

  writeln('Teks telah ditulis ke dalam file', filename);
  readln;
end.
