# PRD — PinjamLab (CONTOH)

> Contoh PRD yang sudah diisi, dipakai pada live demo. Aplikasinya ada di folder `demo-app/`.

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
