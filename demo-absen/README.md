# AbsenKu — Aplikasi Demo Tanpa Database

Aplikasi absensi siswa **satu file HTML**. Tidak butuh database, server, atau akun apa pun.
Data disimpan di browser (localStorage), jadi bisa dibuka langsung dari laptop, **bahkan tanpa internet**.

Cocok untuk:
- Demo cadangan kalau internet lab bermasalah
- Tim yang baru belajar dan ingin fokus ke tampilan + logika dulu
- Contoh "versi 1" sebelum disambungkan ke database (lihat `demo-app/` untuk versi Supabase)

## Fitur
| Menu | Isi |
|---|---|
| Absen Hari Ini | Pilih kelas + tanggal, klik H / I / S / A per siswa, tombol "Tandai semua Hadir", ringkasan jumlah |
| Rekap | Rekap per kelas per bulan, % kehadiran (di bawah 75% merah), unduh CSV untuk Excel |
| Data Siswa | Tambah siswa satu per satu atau tempel banyak nama sekaligus, hapus siswa, cadangkan & pulihkan data (.json) |

## Cara menjalankan
- **Offline:** klik dua kali `index.html`, terbuka di browser. Selesai.
- **Online:** sudah ikut GitHub Pages repo ini → `https://<username>.github.io/starter-kit-lomba-ai/demo-absen/`

## Keamanan & batasan (jujur ke juri)
- Semua teks dari pengguna di-*escape* sebelum ditampilkan (cegah XSS).
- File CSV dilindungi dari *CSV injection* (sel yang diawali `= + - @` diberi tanda kutip).
- File cadangan divalidasi dulu sebelum menimpa data.
- **Batasan:** data hanya ada di satu browser di satu perangkat, tidak ada login, dan bisa hilang kalau riwayat browser dihapus.
  Karena itu ada fitur unduh cadangan. Untuk dipakai banyak guru sekaligus, butuh database (lihat `demo-app/` + `docs/PANDUAN-SUPABASE.md`).

## Perbandingan dua versi demo
| | `demo-absen/` (AbsenKu) | `demo-app/` (PinjamLab) |
|---|---|---|
| Database | Tidak ada (localStorage) | Supabase (PostgreSQL) |
| Login | Tidak ada | Ada (Supabase Auth) |
| Butuh internet | Tidak | Ya |
| Data dipakai bersama | Tidak, per perangkat | Ya, semua guru melihat data yang sama |
| Tingkat kesulitan | Pemula | Menengah |

## Prompt untuk membuat ulang dengan AI
```
Buat aplikasi web absensi siswa dalam SATU file index.html (HTML + CSS + JavaScript murni, tanpa library).
Data disimpan di localStorage. Menu: Absen Hari Ini (pilih kelas & tanggal, status H/I/S/A per siswa),
Rekap bulanan per kelas dengan % hadir dan unduh CSV, Data Siswa (tambah, tempel banyak nama, hapus,
cadangkan & pulihkan .json). Wajib: responsif di HP, escape semua teks dari pengguna, konfirmasi sebelum
menghapus, komentar Bahasa Indonesia. Setelah kode, jelaskan cara kerjanya dalam 5 poin.
```
