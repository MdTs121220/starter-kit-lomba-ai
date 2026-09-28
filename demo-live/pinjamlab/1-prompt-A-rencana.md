# Prompt A — Minta Rencana PinjamLab

Tempel di **percakapan baru** (klik ikon Copy di pojok kotak). Isinya sudah gabungan AGENTS.md versi PinjamLab + PRD PinjamLab + permintaan rencana.

````text
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

---

# PRD — PinjamLab (CONTOH)

## 1. Identitas
- **Nama aplikasi:** PinjamLab
- **Tim:** Tim Demo (pemateri)
- **Platform:** Web (responsif, bisa dibuka di HP)
- **Hosting:** GitHub Pages · **Database:** Supabase (gratis)

## 2. Masalah
- **Masalah saat ini:** Peminjaman alat lab (tang crimping, LAN tester, router) dicatat di buku. Alat sering tidak kembali dan sulit dilacak siapa peminjam terakhir.
- **Siapa yang terdampak:** Guru produktif TJKT dan petugas lab.
- **Cara sekarang:** Buku catatan manual, kadang lewat pesan WA.
- **Hasil wawancara:** Petugas lab: "Setiap akhir semester ada 3–5 alat hilang, bukunya juga sering tidak lengkap."

## 3. Solusi & Tujuan
- **Solusi:** Aplikasi web untuk mencatat peminjaman dan pengembalian alat lab, bisa dari HP.
- **Tujuan terukur:** Petugas bisa tahu dalam 5 detik alat apa yang sedang dipinjam dan oleh siapa.

## 4. Pengguna & Hak Akses
| Peran | Siapa | Boleh | Tidak boleh |
|---|---|---|---|
| Petugas | Guru / petugas lab | Login, catat pinjam, tandai kembali, lihat daftar | Menghapus catatan |
| Pengunjung | Siapa pun tanpa login | – | Melihat atau mengubah data apa pun |

## 5. Fitur Wajib
| No | Fitur | Kriteria berhasil |
|---|---|---|
| F1 | Login petugas | Hanya akun terdaftar bisa masuk; tidak ada pendaftaran publik |
| F2 | Catat peminjaman | Nama (≥3 huruf), kelas, alat, jumlah (1–50) tersimpan ke database |
| F3 | Tandai dikembalikan | Status berubah + waktu kembali tercatat; ada konfirmasi |
| F4 | Daftar + cari + filter | Cari nama/kelas/alat, filter status, ringkasan jumlah di atas |

**Tambahan:** ekspor rekap ke Excel, notifikasi alat belum kembali > 1 hari.

## 6. Alur Pengguna
1. Petugas membuka link → login.
2. Siswa datang meminjam → petugas isi form → Simpan.
3. Siswa mengembalikan → petugas cari nama → klik *Kembalikan* → konfirmasi.

## 7. Data
| Tabel | Kolom |
|---|---|
| peminjaman | id, nama_siswa, kelas, alat, jumlah, status, dipinjam_pada, dikembalikan_pada, dicatat_oleh |
| (auth.users) | dikelola Supabase Auth |

## 8. Tampilan
Login · Dashboard (ringkasan + form + daftar). Warna utama biru, kesan bersih dan formal, tabel menjadi kartu di HP.

## 9. Batasan Teknis
HTML + CSS + JavaScript murni, satu file, Supabase JS dari CDN, tanpa build tool.

## 10. Di Luar Cakupan
Login siswa, stok/inventaris alat, denda, cetak kartu.

---

Di atas adalah aturan kerja (AGENTS.md) dan kebutuhan aplikasi (PRD) kami.
Buat RENCANA saja dulu, JANGAN menulis kode:
- file apa saja yang dibuat dan isinya (index.html, config.js, schema.sql)
- rancangan tabel database: kolom, tipe data, batasan (CHECK)
- aturan Row Level Security: siapa boleh lihat, tambah, ubah, hapus
- urutan pengerjaan fitur F1 sampai F4
- risiko keamanan untuk aplikasi ini
Tunggu persetujuan saya sebelum menulis kode.
````

Yang ditunggu: **rencana**, belum kode. Periksa bagian RLS: harus ada aturan bahwa hanya pengguna yang login yang boleh melihat/menambah/mengubah data, dan **tidak ada izin hapus**. Kalau belum, balas: `Tambahkan: data tidak boleh dihapus, hanya ditandai dikembalikan.`

Berikutnya: [Prompt B — skema database](2-prompt-B-database.md)
