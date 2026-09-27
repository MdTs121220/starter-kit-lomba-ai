# Cara Kerja: 7 Langkah Bikin Aplikasi Bareng AI

```
 1 Cari masalah → 2 PRD → 3 Rancang → 4 Bangun per fitur ⇄ 5 Uji → 6 Cek keamanan → 7 Rilis
                                            ↑_______________|
                                       (ulangi sampai beres)
```

AI bantu kerja lebih cepat, tapi kalian yang pegang kemudi. Dua keputusan penting, yaitu PRD final dan rencana kerja, harus disetujui tim dulu sebelum AI mulai menulis kode.

## 1. Cari masalah nyata (hari 1)
- Ngobrol dengan 2–3 calon pengguna: guru, wali kelas, TU, petugas perpus atau lab.
- Tanyakan: *"Pekerjaan apa yang paling makan waktu atau paling sering salah?"*
- Pilih SATU masalah yang bisa selesai dalam waktu lomba.
- **Bantuan AI:** menyusun pertanyaan wawancara dan merangkum jawabannya.

## 2. Tulis PRD (hari 1–2)
- Isi `PRD.md`. Cukup 3–5 fitur wajib.
- **Bantuan AI:** minta AI mengkritik PRD kalian (prompt #0), supaya ketahuan bagian yang masih kurang jelas.
- **Tim memutuskan:** PRD final.

## 3. Rancang dulu, baru ngoding
- Database: tabel, kolom, dan hubungannya.
- Tampilan: sketsa kasar tiap halaman (di kertas juga boleh).
- Isi bagian *Stack* di `AGENTS.md`.
- **Bantuan AI:** mengusulkan skema database dan struktur folder (prompt #1). Minta **rencana, belum kode**.
- **Tim memutuskan:** setuju dengan rencananya, baru lanjut.

## 4. Bangun satu per satu
- Satu prompt untuk satu fitur (prompt #2). Mulai dari login, lalu fitur inti.
- Jalankan, lihat hasilnya, pahami kodenya. Bagian yang belum dimengerti, minta AI jelaskan (prompt #5).
- **`git commit` setiap fitur yang sudah jalan.**

## 5. Coba dan uji
- Coba data yang benar, salah, kosong, dan yang sangat panjang.
- Coba juga di HP.
- Kalau error: salin pesan error lengkap + kode terkait + apa yang kalian lakukan (prompt #3).
- Belum beres? Balik ke langkah 4. **Ini wajar.** AI jarang langsung benar di percobaan pertama.

## 6. Cek keamanan
- Jalankan `docs/CHECKLIST-KEAMANAN.md`.
- Minta AI mengecek kode kalian sendiri (prompt #4), lalu perbaiki temuannya.

## 7. Rilis dan dokumentasi
- Online-kan (lihat `docs/PANDUAN-GITHUB.md`), lalu coba link-nya dari HP orang lain.
- Bikin manual, video tutorial, poster, dan latihan presentasi (`docs/PANDUAN-PRESENTASI.md`).
- Lengkapi README: deskripsi, fitur, cara instal, akun demo, dan tools AI yang dipakai.
