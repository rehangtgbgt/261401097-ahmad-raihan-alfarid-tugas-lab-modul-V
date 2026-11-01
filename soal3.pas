program soal3;
uses crt;

var
    nilai: array[1..10] of real; // Menyimpan nilai maksimal 10 mahasiswa
    n, i, j: integer;

begin
clrscr;
    repeat
        write('Masukkan jumlah mahasiswa (1-10): ');
        readln(n);
    until (n >= 1) and (n <= 10);

    for i := 1 to n do
    begin
        write('Masukkan nilai UAS mahasiswa ke-', i, ': ');
        readln(nilai[i]);
    end;

    // Mengurutkan nilai menggunakan Bubble Sort
    for i := 1 to n-1 do
        for j := 1 to n-i do
        if nilai[j] > nilai[j+1] then
        begin
            nilai[j] := nilai[j] + nilai[j+1];
            nilai[j+1] := nilai[j] - nilai[j+1];
            nilai[j] := nilai[j] - nilai[j+1];
        end;

    writeln;
    writeln('Nilai UAS dari terendah ke tertinggi:');

    for i := 1 to n do
        writeln(nilai[i]:0:2);

end.
