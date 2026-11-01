
program soal4;
uses crt;

var
    tugas, kuis, uts, uas: array[1..5] of real;
    rata: array[1..5] of real;
    n, i: integer;

begin
clrscr;

    repeat
        write('Masukkan jumlah mahasiswa (1-5): ');
        readln(n);
    until (n >= 1) and (n <= 5);

    for i := 1 to n do
    begin
        writeln;
        writeln('Mahasiswa ke-', i);

        write('Masukkan nilai tugas: ');
        readln(tugas[i]);

        write('Masukkan nilai kuis: ');
        readln(kuis[i]);

        write('Masukkan nilai UTS: ');
        readln(uts[i]);

        write('Masukkan nilai UAS: ');
        readln(uas[i]);

        // Menghitung rata-rata dari 4 jenis nilai
        rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
    end;

    writeln;
    writeln('===== HASIL KELULUSAN MAHASISWA =====');

    for i := 1 to n do
    begin
        writeln;
        writeln('Mahasiswa ke-', i);

        writeln('Nilai Tugas: ', tugas[i]:0:2);
        writeln('Nilai Kuis : ', kuis[i]:0:2);
        writeln('Nilai UTS  : ', uts[i]:0:2);
        writeln('Nilai UAS  : ', uas[i]:0:2);
        writeln('Rata-rata  : ', rata[i]:0:2);

        // Menentukan kelulusan berdasarkan nilai rata-rata
        if rata[i] >= 70 then
        writeln('Keterangan: LULUS')
        else
        writeln('Keterangan: TIDAK LULUS');
    end;

end.
