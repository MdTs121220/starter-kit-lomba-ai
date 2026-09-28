# Prompt D — Cek Keamanan

Tempel di percakapan yang sama. Opsional, tapi bagus untuk latihan.

````text
Bertindaklah sebagai auditor keamanan. Periksa schema.sql, config.js, dan index.html
terakhir terhadap: data bisa dibaca tanpa login, data bisa dihapus, XSS, validasi input,
kunci rahasia yang bocor, dan pendaftaran akun oleh orang luar.
Untuk setiap temuan: lokasi, tingkat bahaya (tinggi/sedang/rendah), contoh cara
menyerang, dan perbaikannya. Kalau aman, jelaskan kenapa aman.
````

## Uji manual
- Isi nama siswa dengan `<script>alert(1)</script>` → harus tampil sebagai teks, tidak ada pop-up.
- Buka aplikasi di jendela Incognito (`Ctrl + Shift + N`) tanpa login → data tidak boleh tampil.

[Kembali ke daftar prompt PinjamLab](README.md)
