# Prompt A — Minta Rencana (Langkah 1)

Klik ikon **Copy** di pojok kanan atas kotak di bawah, lalu tempel ke ChatGPT/Gemini di **percakapan baru**.
Isinya sudah gabungan: AGENTS.md versi AbsenKu + PRD AbsenKu + permintaan rencana.

Yang ditunggu dari AI: **rencana**, belum kode. Kalau AI langsung menulis kode, balas: `Stop. Saya minta rencana dulu, belum kode.`

````text
# AGENTS.md — Aturan Kerja untuk AI

> Versi AGENTS.md untuk demo AbsenKu: bagian *Stack* sudah diisi
> (HTML + CSS + JS satu file, data di localStorage, tanpa database).

## Konteks
Kamu membantu tim siswa SMK membangun aplikasi untuk lomba
"Perancangan dan Pengembangan Aplikasi Berbasis Web Berbantuan AI" di SMK Negeri 1 Sorong.
Kebutuhan lengkap ada di `PRD.md`. Selalu baca PRD sebelum mengerjakan apa pun.

Tim ini sedang BELAJAR. Mereka harus bisa menjelaskan setiap baris kode kepada juri.

## Stack
- Frontend: HTML + CSS + JavaScript murni, dalam SATU file index.html
- Backend/database: tidak ada; data disimpan di localStorage browser
- Hosting: GitHub Pages (bisa juga dibuka langsung dari file)
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

---

# PRD — AbsenKu (CONTOH, versi tanpa database)

## 1. Identitas
- **Nama aplikasi:** AbsenKu
- **Platform:** Web, satu file HTML, bisa offline
- **Hosting:** GitHub Pages (opsional; bisa dibuka langsung dari file)

## 2. Masalah
- **Masalah saat ini:** Wali kelas mencatat absen di buku, lalu menghitung rekap bulanan secara manual. Rekap sering telat dan salah hitung.
- **Siapa yang terdampak:** Wali kelas dan guru BK.
- **Hasil wawancara (contoh):** Wali kelas: "Rekap akhir bulan bisa makan waktu 1–2 jam per kelas."

## 3. Solusi & Tujuan
- **Solusi:** Aplikasi absen di laptop/HP wali kelas: klik status per siswa, rekap bulanan otomatis, unduh ke Excel.
- **Tujuan terukur:** Rekap satu kelas satu bulan selesai kurang dari 1 menit.

## 4. Pengguna
| Peran | Siapa | Boleh |
|---|---|---|
| Wali kelas | Pemilik perangkat | Semua fitur (tanpa login karena data hanya ada di perangkatnya) |

## 5. Fitur Wajib
| No | Fitur | Kriteria berhasil |
|---|---|---|
| F1 | Kelola data siswa | Tambah satu/banyak nama, nama ganda dilewati, hapus dengan konfirmasi |
| F2 | Absen harian | Pilih kelas + tanggal, status H/I/S/A, ringkasan jumlah langsung berubah |
| F3 | Rekap bulanan | Jumlah H/I/S/A per siswa, % hadir, di bawah 75% ditandai |
| F4 | Ekspor & cadangan | Unduh CSV yang terbuka di Excel; cadangkan & pulihkan .json |

## 6. Data
Disimpan di localStorage browser dengan kunci `absenku_v1`:
```
{ siswa: [{ id, kelas, nama }],
  absen: { "2026-09-29|XI TJKT 1": { "<id siswa>": "H" } },
  kelasTerakhir: "XI TJKT 1" }
```

## 7. Batasan Teknis
HTML + CSS + JavaScript murni, satu file, tanpa library, tanpa internet.

## 8. Di Luar Cakupan
Login, banyak pengguna di perangkat berbeda, sinkronisasi antar-perangkat (butuh database, lihat versi PinjamLab).

---

Di atas adalah aturan kerja (AGENTS.md) dan kebutuhan aplikasi (PRD) kami.
Buat RENCANA saja dulu, JANGAN menulis kode:
- bagian-bagian halaman
- struktur data yang disimpan di localStorage
- urutan pengerjaan fitur F1 sampai F4
- risiko keamanan untuk aplikasi ini
Tunggu persetujuan saya sebelum menulis kode.
````

Berikutnya: [Prompt B — bikin fitur absen](2-prompt-B-fitur-absen.md)
