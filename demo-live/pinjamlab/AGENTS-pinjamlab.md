# AGENTS.md — Aturan Kerja untuk AI

> Versi AGENTS.md untuk PinjamLab: bagian *Stack* sudah diisi (HTML + JS + Supabase).

## Konteks
Kamu membantu tim siswa SMK membangun aplikasi untuk lomba
"Perancangan dan Pengembangan Aplikasi Berbasis Web Berbantuan AI" di SMK Negeri 1 Sorong.
Kebutuhan lengkap ada di `PRD.md`. Selalu baca PRD sebelum mengerjakan apa pun.

Tim ini sedang BELAJAR. Mereka harus bisa menjelaskan setiap baris kode kepada juri.

## Stack
- Frontend: HTML + CSS + JavaScript murni (tanpa framework, tanpa build tool)
- Backend/database: Supabase (PostgreSQL + Supabase Auth), library supabase-js v2 dari CDN jsDelivr
- Konfigurasi: URL proyek dan publishable/anon key di file config.js terpisah
- Hosting: GitHub Pages
- Jangan menambah framework atau library baru tanpa izin tim.

## Cara Bekerja
1. **Rencana dulu.** Sebelum menulis kode, jelaskan rencana: file apa yang dibuat/diubah dan kenapa. Tunggu persetujuan.
2. **Satu fitur per langkah.** Kerjakan hanya fitur yang diminta. Jangan mengubah bagian lain tanpa izin.
3. **Jelaskan dengan bahasa sederhana.** Setelah menulis kode, ringkas cara kerjanya dalam 3–5 poin untuk siswa SMK.
4. **Beri komentar** di bagian kode yang penting, dalam Bahasa Indonesia.
5. **Jujur saat tidak yakin.** Katakan kalau ada asumsi atau hal yang belum pasti; jangan mengarang.
6. **Tunjukkan cara menguji** setiap fitur (langkah klik atau data contoh).

## Aturan Kode
- Nama variabel/fungsi jelas dan konsisten (boleh Bahasa Indonesia atau Inggris, jangan dicampur dalam satu file).
- Pisahkan: tampilan, logika, dan akses data.
- Satu fungsi = satu tugas. Hindari fungsi lebih dari ±40 baris.
- Tangani error: tampilkan pesan ramah ke pengguna, catat detail di console/log.
- Tidak ada kode mati, `console.log` sisa debug, atau data rahasia di repository.

## Aturan Keamanan (WAJIB)
- **Password:** selalu di-hash (`password_hash()` di PHP, atau pakai layanan Auth seperti Supabase). Tidak pernah disimpan plain text.
- **Database:** selalu *prepared statement* / query builder. Tidak pernah menyambung input pengguna langsung ke SQL.
- **Output:** escape semua data dari pengguna sebelum ditampilkan di HTML (cegah XSS). Hindari `innerHTML` dengan data mentah.
- **Input:** validasi di sisi klien DAN di sisi server/database.
- **Akses:** cek login dan peran (role) di setiap halaman/aksi yang dilindungi, bukan hanya menyembunyikan tombol.
- **Rahasia:** API key rahasia, password database, *service role key* tidak boleh ada di kode frontend atau di GitHub. Gunakan `.env` dan `.gitignore`.
- **Supabase/Firebase:** Row Level Security / Security Rules wajib aktif.
- **Form (PHP):** gunakan token CSRF untuk aksi yang mengubah data.
- **Upload file:** batasi tipe dan ukuran, ganti nama file, jangan simpan di folder yang bisa dieksekusi.

## Aturan Tampilan (UI/UX)
- *Mobile-first* dan responsif (uji di lebar 360px).
- Konsisten: satu warna utama, satu jenis font, jarak (spacing) seragam.
- Setiap aksi memberi umpan balik: loading, berhasil, gagal.
- Konfirmasi sebelum aksi yang tidak bisa dibatalkan.
- Label jelas pada setiap input; kontras teks cukup terbaca.
- Bahasa antarmuka: Bahasa Indonesia yang ramah.

## Definition of Done
Sebuah fitur dianggap selesai jika:
- [ ] Sesuai kriteria berhasil di `PRD.md`
- [ ] Sudah diuji dengan data benar DAN data salah
- [ ] Lolos aturan keamanan di atas
- [ ] Tampil baik di HP dan laptop
- [ ] Tim bisa menjelaskan cara kerjanya tanpa melihat AI
- [ ] Sudah di-commit ke GitHub dengan pesan yang jelas
