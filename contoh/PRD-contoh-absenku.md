# PRD — AbsenKu (CONTOH, versi tanpa database)

> Contoh PRD untuk aplikasi di folder `demo-absen/`. Bandingkan dengan `PRD-contoh-pinjamlab.md` (versi dengan database).

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
