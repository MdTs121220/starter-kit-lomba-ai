# Bank Prompt Siap Pakai

Ganti bagian `<...>`. Prompt yang baik punya 5 unsur: **Peran · Konteks · Tugas · Batasan · Format hasil**.

---

## Prompt buruk vs prompt baik

**❌ Buruk**
```
buatin aplikasi absensi
```
Hasilnya: kode panjang yang asal jadi, stack acak, tidak aman, dan kalian tidak paham isinya.

**✅ Baik**
```
Peran: Kamu senior web developer yang membimbing siswa SMK.
Konteks: Aplikasi absensi siswa untuk SMK Negeri 1 Sorong. Pengguna: guru (input absen),
siswa (lihat rekap), admin (kelola data). Stack: PHP 8 + MySQL (PDO), Bootstrap 5.
Tugas: Buat HANYA fitur login dengan 3 role (admin/guru/siswa).
Batasan: password di-hash dengan password_hash(), query pakai prepared statement,
session diregenerasi setelah login, beri komentar Bahasa Indonesia.
Format: tampilkan struktur file dulu, lalu isi tiap file, lalu 5 poin penjelasan
sederhana dan cara mengujinya. Jangan lanjut ke fitur lain sebelum saya konfirmasi.
```

---

## #0 — Kritik PRD
```
Berikut PRD aplikasi kami untuk lomba. Bertindaklah sebagai juri yang teliti.
1) Sebutkan bagian yang belum jelas atau saling bertentangan.
2) Fitur mana yang terlalu besar untuk dikerjakan <X> hari oleh 3 siswa?
3) Ajukan 5 pertanyaan yang perlu kami tanyakan ke pengguna.
Jangan menulis kode.

<tempel PRD.md>
```

## #1 — Minta rencana (bukan kode)
```
<tempel AGENTS.md>
<tempel PRD.md>

Buat RENCANA IMPLEMENTASI saja, jangan menulis kode:
- Struktur folder dan fungsi tiap file
- Skema database (tabel, kolom, tipe, relasi) dalam bentuk tabel
- Urutan pengerjaan fitur dari yang paling dasar
- Risiko keamanan yang perlu diperhatikan untuk aplikasi ini
```

## #2 — Bangun satu fitur
```
Rencana sudah disetujui. Sekarang kerjakan HANYA fitur <F2: nama fitur>.
Kriteria berhasil: <salin dari PRD>.
Ikuti aturan di AGENTS.md. Tampilkan file yang dibuat/diubah secara lengkap,
lalu jelaskan cara kerjanya dalam 5 poin dan cara mengujinya.
```

## #3 — Debug error
```
Fitur <nama> error.
Yang saya lakukan: <langkah>
Yang saya harapkan: <harapan>
Yang terjadi: <hasil>
Pesan error lengkap:
<tempel error>
Kode terkait:
<tempel kode>
Jelaskan PENYEBAB-nya dulu dengan bahasa sederhana, baru beri perbaikan minimal.
Jangan mengubah bagian lain.
```

## #4 — Audit keamanan
```
Bertindaklah sebagai auditor keamanan aplikasi web. Periksa kode berikut terhadap:
SQL injection, XSS, CSRF, password tidak di-hash, cek login/role yang bisa dilewati,
API key/rahasia yang bocor, validasi input, dan upload file.
Untuk setiap temuan: lokasi (file+baris), tingkat bahaya (tinggi/sedang/rendah),
contoh cara menyerang, dan perbaikannya.
<tempel kode>
```

## #5 — Jelaskan kode (persiapan tanya jawab juri)
```
Jelaskan kode berikut seolah kepada siswa SMK kelas XI:
1) Apa tugas kode ini secara umum?
2) Jelaskan baris demi baris bagian yang penting.
3) Buat 5 pertanyaan yang mungkin ditanyakan juri tentang kode ini, beserta jawabannya.
<tempel kode>
```

## #6 — Perbaiki tampilan (UI/UX)
```
Perbaiki tampilan halaman <nama> agar: responsif di HP 360px, konsisten dengan
warna utama <warna>, setiap tombol punya status loading, pesan error jelas,
dan mudah dipakai guru yang tidak terbiasa teknologi.
Jangan mengubah logika atau nama fungsi.
<tempel kode>
```

## #7 — Dokumentasi
```
Berdasarkan kode dan PRD berikut, buatkan:
1) README.md: deskripsi, fitur, teknologi, cara instal, akun demo, tools AI yang dipakai
2) Manual penggunaan per peran (admin/guru/siswa) dengan langkah bernomor
3) Naskah video tutorial 3 menit
```

## #8 — Poster / flyer
```
Buat konsep poster A3 untuk aplikasi <nama>: headline maksimal 6 kata,
3 manfaat utama, 3 fitur unggulan dengan ikon, QR code ke <link>,
nama tim, logo sekolah. Sarankan palet warna dan tata letak.
```

## #9 — Latihan tanya jawab
```
Kamu juri lomba aplikasi SMK. Ajukan 10 pertanyaan sulit tentang aplikasi kami
(fungsi, keamanan, manfaat, desain, alasan teknologi). Tanyakan satu per satu,
tunggu jawaban saya, lalu beri nilai dan masukan.
<tempel PRD.md>
```
