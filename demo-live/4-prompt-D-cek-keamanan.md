# Prompt D — Minta AI Mengecek Keamanan (Langkah 5, opsional)

Tempel di percakapan yang sama. AI sudah punya kodenya, jadi tidak perlu ditempel ulang.

````text
Bertindaklah sebagai auditor keamanan aplikasi web. Periksa index.html terakhir
terhadap: XSS, data yang bisa rusak kalau localStorage diubah manual, validasi input,
dan konfirmasi sebelum menghapus. Untuk setiap temuan: lokasi, tingkat bahaya
(tinggi/sedang/rendah), contoh cara menyerang, dan perbaikannya.
Kalau aman, jelaskan kenapa aman.
````

## Uji manual di depan kelas
- Isi nama siswa dengan `<script>alert(1)</script>` → harus tampil sebagai teks biasa, tidak ada pop-up.
- Di PinjamLab: buka jendela Incognito (`Ctrl + Shift + N`) → buka link PinjamLab → hanya halaman login yang tampil.

[Kembali ke panduan](README.md)
