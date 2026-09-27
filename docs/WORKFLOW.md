# Workflow: 7 Langkah Membangun Aplikasi dengan AI

```
 1 Masalah → 2 PRD → 3 Rancang → 4 Bangun per fitur ⇄ 5 Uji → 6 Audit keamanan → 7 Rilis & dokumentasi
                                        ↑__________________|
                                    (ulangi sampai lolos)
```

## 1. Temukan masalah nyata (Hari 1)
- Wawancarai 2–3 calon pengguna: guru, wali kelas, TU, petugas perpus/lab.
- Tanyakan: *"Pekerjaan apa yang paling makan waktu atau sering salah?"*
- Pilih SATU masalah yang bisa diselesaikan dalam waktu lomba.
- **Peran AI:** bantu menyusun pertanyaan wawancara dan merangkum jawabannya.

## 2. Tulis PRD (Hari 1–2)
- Isi `PRD.md`. Tentukan 3–5 fitur WAJIB saja.
- **Peran AI:** kritik PRD kalian (prompt #0 di BANK-PROMPT). Minta AI mencari yang kurang jelas.
- **Keputusan manusia:** tim menyetujui PRD final.

## 3. Rancang sebelum ngoding
- Database: tabel, kolom, relasi.
- Tampilan: sketsa kasar tiap halaman (kertas pun boleh).
- Isi bagian *Stack* di `AGENTS.md`.
- **Peran AI:** usulkan skema database dan struktur folder (prompt #1). Minta **rencana, bukan kode**.
- **Keputusan manusia:** setujui rencana, baru lanjut.

## 4. Bangun per fitur
- Satu prompt = satu fitur (prompt #2). Mulai dari login, lalu fitur inti.
- Jalankan, lihat hasilnya, pahami kodenya. Minta AI menjelaskan bagian yang belum dimengerti (prompt #5).
- **`git commit` setiap fitur yang sudah jalan.**

## 5. Uji
- Coba data benar, data salah, data kosong, data sangat panjang.
- Coba di HP.
- Kalau error: salin pesan error lengkap + kode terkait + apa yang kalian lakukan (prompt #3).
- Belum lolos? Kembali ke langkah 4. **Ini normal.** AI jarang benar di percobaan pertama.

## 6. Audit keamanan
- Jalankan `docs/CHECKLIST-KEAMANAN.md`.
- Minta AI mengaudit kode kalian sendiri (prompt #4), lalu perbaiki temuannya.

## 7. Rilis & dokumentasi
- Deploy (lihat `docs/PANDUAN-GITHUB.md`), uji link dari HP orang lain.
- Buat manual penggunaan, video tutorial, poster, dan latihan presentasi (`docs/PANDUAN-PRESENTASI.md`).
- Isi README repository: deskripsi, fitur, cara instal, akun demo, tools AI yang dipakai.
