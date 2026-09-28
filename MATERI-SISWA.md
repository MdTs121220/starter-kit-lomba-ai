# Materi Siswa: Membangun Aplikasi Juara dengan AI

**Lomba Perancangan dan Pengembangan Aplikasi Berbasis Web Berbantuan AI · SMK Negeri 1 Sorong · 29 September 2026**
Pemateri: M. Dwiyanto Tobi Sogen, ST., MT

Materi ini nemenin sesi hari ini dan starter kit di repo ini. Simpan sampai hari lomba ya: isinya cara juri menilai, langkah kerja, contoh prompt, dan checklist.

**Daftar isi**
1. [Tentang Lomba](#1-tentang-lomba)
2. [Kenalan dengan Tools AI](#2-kenalan-dengan-tools-ai)
3. [Cara Kerja: 7 Langkah](#3-cara-kerja-7-langkah)
4. [Cara Ngomong ke AI (Desain Prompt)](#4-cara-ngomong-ke-ai-desain-prompt)
5. [Keamanan & Kapan Dianggap Selesai](#5-keamanan--kapan-dianggap-selesai)
6. [Presentasi, Dokumen & Rencana Kerja](#6-presentasi-dokumen--rencana-kerja)
7. [Praktik: Database Gratis dengan Supabase](#7-praktik-database-gratis-dengan-supabase)
8. [Dua Aplikasi Demo](#8-dua-aplikasi-demo)
9. [Aturan Emas & Isi Starter Kit](#9-aturan-emas--isi-starter-kit)

---

## 1. Tentang Lomba

**Lomba 2: Desain & Pembuatan Aplikasi.** Tugas kalian: bikin aplikasi yang benar-benar jalan dan memudahkan kegiatan di SMK Negeri 1 Sorong. Contoh dari panitia: absensi siswa, sistem perpustakaan, absensi guru di kelas, dan platform belajar guru dan siswa. Idenya boleh mirip contoh, asal masalah yang kalian selesaikan nyata dan jelas.

### Cara juri menilai (100 poin)

| Kriteria | Bobot | Yang dilihat juri | Biar nilainya aman |
|---|---|---|---|
| Fungsionalitas | 30% | Aplikasi jalan lancar, fiturnya pas dengan kebutuhan, tidak ada bug, database jalan | Cukup 3–5 fitur wajib, tapi semuanya mulus. Siapkan data contoh |
| UI/UX Design | 25% | Enak dilihat, gampang dipakai siswa dan guru, tetap rapi di HP | Coba di HP layar 360px, pakai satu warna utama, dan kasih tanda loading/berhasil/gagal di setiap tombol |
| Inovasi & Manfaat | 20% | Idenya kreatif dan benar-benar bermanfaat untuk SMKN 1 Sorong | Tanya langsung ke calon pengguna, lalu tulis manfaatnya pakai angka |
| Kode & Keamanan | 15% | Kodenya rapi, aman, dan ada penjelasannya | Jalankan checklist keamanan di bagian 5 |
| Presentasi & Dokumentasi | 10% | Demo 10 menit jelas, ada video tutorial dan manual | Latihan pakai timer, bawa rekaman demo buat cadangan |

### Yang wajib ada saat lomba
- Platform bebas: Android, web, atau desktop.
- Kumpulkan source code, APK atau link hosting, dan database.
- Maksimal 3 orang per tim (sendiri juga boleh).
- Presentasi 10 menit, lalu tanya jawab 5 menit.
- Poster atau flyer aplikasi wajib ada.

---

## 2. Kenalan dengan Tools AI

Ingat jenisnya, bukan mereknya, karena nama aplikasi AI cepat sekali berganti. Baru mulai? Pakai level 1–2 dulu. Sudah biasa ngoding? Silakan coba level 3.

| Level | Jenis | Contoh (per September 2026) | Gratis? | Dipakai buat |
|---|---|---|---|---|
| 1 | Chat AI | ChatGPT, Gemini, Claude, Copilot | Ya, ada kuota harian | Curah ide, PRD, rancang database, cari bug, dokumentasi |
| 2 | App builder | Google AI Studio (mode Build) | Ya | Bikin contoh tampilan dengan cepat dari prompt |
| 3 | IDE + agen | Google Antigravity; VS Code + GitHub Copilot | Ya, ada batas mingguan / paket Free | Ngoding satu proyek penuh bareng AI di dalam editor |
| 4 | Agen terminal | Codex CLI, Antigravity CLI, Claude Code, Hermes Agent | Codex: kuota kecil pakai akun ChatGPT gratis; Claude Code: berbayar | AI bisa membaca, menjalankan, dan mengubah banyak file sendiri |

Pendukung yang juga gratis: **GitHub** buat simpan kode, **GitHub Pages** buat online-kan web, dan **Supabase** buat database + login (2 proyek, berhenti sementara kalau seminggu tidak dipakai). Kuota gratis sering berubah, jadi siapkan minimal dua tool cadangan.

### Tiap tool beda nama filenya
- **AGENTS.md**: otomatis dibaca Codex, Antigravity, Copilot, dan banyak tool lain.
- **CLAUDE.md**: dibaca Claude Code. Di starter kit, isinya tinggal mengambil AGENTS.md.
- **Chat biasa** (ChatGPT/Gemini di web): tidak bisa baca file, jadi tempel isi AGENTS.md di awal percakapan.

---

## 3. Cara Kerja: 7 Langkah

AI bantu kerja lebih cepat, tapi kalian yang pegang kemudi. Keputusan penting, yaitu PRD final dan rencana kerja, tetap disetujui tim dulu sebelum AI mulai menulis kode. Langkah 4–5 bakal diulang terus: AI jarang langsung benar di percobaan pertama, dan itu wajar.

```
 1 Cari masalah → 2 PRD → 3 Rancang → 4 Bangun per fitur ⇄ 5 Uji & commit → 6 Cek keamanan → 7 Rilis
                                            ↑______________________|
                                              (ulangi sampai beres)
```

| Langkah | Yang dikerjakan | Bantuan AI | Yang diputuskan tim |
|---|---|---|---|
| 1. Cari masalah | Ngobrol dengan 2–3 calon pengguna (guru, TU, petugas perpus/lab), lalu pilih SATU masalah | Menyusun pertanyaan wawancara, merangkum jawabannya | Masalah mana yang dikerjakan |
| 2. Tulis PRD | Isi [`PRD.md`](PRD.md), cukup 3–5 fitur wajib | Mengkritik PRD kalian (prompt #0) | PRD final |
| 3. Rancang | Rancang database dan sketsa tampilan, isi bagian Stack di [`AGENTS.md`](AGENTS.md) | Bikin rencana dan skema (prompt #1), belum kode | Setuju atau tidak dengan rencananya |
| 4. Bangun per fitur | Satu prompt untuk satu fitur, mulai dari login | Menulis kode (prompt #2) dan menjelaskannya (prompt #5) | Pastikan paham kodenya sebelum lanjut |
| 5. Uji & commit | Coba data benar, salah, kosong, dan sangat panjang; coba di HP; lalu git commit | Bantu cari penyebab error (prompt #3) | Fitur lolos, atau balik ke langkah 4 |
| 6. Cek keamanan | Jalankan checklist di bagian 5 | Mengecek kode kalian (prompt #4) | Memperbaiki temuannya |
| 7. Rilis | Online-kan, bikin manual, video, poster, latihan presentasi | Bantu README, manual, naskah video, dan konsep poster (prompt #7–#8) | Coba link-nya dari HP orang lain |

**Soal commit:** setiap fitur yang sudah jalan langsung di-commit ke GitHub dengan pesan yang jelas, misalnya `Tambah fitur rekap absensi per kelas`. Commit itu seperti *save point* di game: kalau AI malah merusak kode, tinggal balik lewat tab **Commits**.

Detail tiap langkah: [`docs/WORKFLOW.md`](docs/WORKFLOW.md)

---

## 4. Cara Ngomong ke AI (Desain Prompt)

Prompt yang bagus punya 5 bagian: Peran, Konteks, Tugas, Batasan, dan Format. Ada dua kalimat sakti: **HANYA** (supaya AI tidak melebar ke mana-mana) dan **jangan lanjut sebelum saya setujui**.

| Bagian | Pertanyaannya | Contoh |
|---|---|---|
| Peran | AI jadi siapa? | Kamu senior web developer yang membimbing siswa SMK. |
| Konteks | Aplikasi apa, buat siapa, pakai teknologi apa? | Absensi SMKN 1 Sorong untuk guru, siswa, dan admin. Pakai PHP 8 + MySQL (PDO). |
| Tugas | Satu hal apa yang dikerjakan? | Buat HANYA fitur login dengan 3 role. |
| Batasan | Aturan apa yang wajib diikuti? | Pakai password_hash() dan prepared statement, beri komentar Bahasa Indonesia. |
| Format | Hasilnya mau ditampilkan seperti apa? | Struktur file dulu, lalu kode, lalu 5 poin penjelasan dan cara mengujinya. |

### Asal-asalan vs jelas

**Asal-asalan:** `buatin aplikasi absensi`. Hasilnya: teknologi dipilih asal, fitur tidak sesuai, password tidak aman, dan kodenya panjang tapi tidak kalian pahami.

**Jelas:**

```text
Peran: Kamu senior web developer yang membimbing siswa SMK.
Konteks: Aplikasi absensi siswa SMK Negeri 1 Sorong. Guru mengisi absen,
siswa melihat rekap, admin mengelola data. Pakai PHP 8 + MySQL (PDO) dan Bootstrap 5.
Tugas: Buat HANYA fitur login untuk 3 role (admin/guru/siswa).
Batasan: Pakai password_hash(), prepared statement, regenerasi session setelah login,
dan komentar Bahasa Indonesia.
Format: Tampilkan struktur file dulu, lalu isi tiap file, lalu 5 poin penjelasan
yang gampang dipahami dan cara mengujinya. Jangan lanjut ke fitur lain sebelum saya setujui.
```

### Prompt siap pakai

Teks lengkapnya (tinggal Copy) ada di [`docs/BANK-PROMPT.md`](docs/BANK-PROMPT.md).

| No | Buat apa | Dipakai di langkah |
|---|---|---|
| #0 | Minta AI mengkritik PRD, tanpa kode | 2 |
| #1 | Minta rencana: folder, database, urutan fitur, risiko keamanan | 3 |
| #2 | Bikin satu fitur sesuai kriteria di PRD | 4 |
| #3 | Cari penyebab error: tulis langkah, harapan, hasil, dan pesan error lengkap | 5 |
| #4 | Minta AI mengecek keamanan: lokasi masalah, seberapa bahaya, cara menyerang, cara memperbaiki | 6 |
| #5 | Minta AI menjelaskan kode + 5 pertanyaan juri beserta jawabannya | 4 dan persiapan tanya jawab |
| #6 | Rapikan tampilan tanpa mengubah logika | 4 |
| #7 | README, manual tiap peran, naskah video 3 menit | 7 |
| #8 | Konsep poster A3 dengan QR code | 7 |
| #9 | AI pura-pura jadi juri dan kasih 10 pertanyaan sulit | Latihan presentasi |

---

## 5. Keamanan & Kapan Dianggap Selesai

Tiga hal ini pasti juri coba langsung di aplikasi kalian. Pastikan semuanya ditolak atau aman sebelum lomba.

| Uji | Yang diketik / dilakukan | Hasil yang benar | Solusinya |
|---|---|---|---|
| SQL injection | `' OR '1'='1` di kolom login | Login ditolak, tidak muncul error SQL | Prepared statement / query builder |
| XSS | `<script>alert(1)</script>` di kolom nama | Muncul sebagai teks biasa, tidak ada pop-up | Escape output (`htmlspecialchars()`, `{{ }}` di Blade, fungsi escape di JS) |
| Hak akses | Login sebagai siswa, lalu buka alamat halaman admin | Ditolak | Cek login dan role di server, jangan cuma menyembunyikan tombol |

### Checklist keamanan
- [ ] Password disimpan dalam bentuk hash (bukan teks biasa, bukan MD5 atau SHA1)
- [ ] Kalau login salah, pesannya umum saja: "email atau password salah"
- [ ] Logout benar-benar menghapus sesi, dan tidak ada akun bawaan seperti `admin/admin`
- [ ] Input dicek di browser DAN di server/database
- [ ] Form yang mengubah data pakai token CSRF (PHP/Laravel)
- [ ] Pesan error teknis (stack trace, query SQL) tidak muncul ke pengguna
- [ ] Password database, API key rahasia, atau service role key tidak ada di GitHub; `.env` masuk `.gitignore`
- [ ] Supabase: Row Level Security aktif. Firebase: rules tidak `allow read, write: if true`
- [ ] Upload file: jenis dan ukurannya dibatasi, nama file diganti otomatis
- [ ] Demo pakai data contoh, bukan data siswa asli. Data pribadi asli jangan ditempel ke chat AI

Versi lengkap: [`docs/CHECKLIST-KEAMANAN.md`](docs/CHECKLIST-KEAMANAN.md)

### Fitur dianggap selesai kalau...
- [ ] Sesuai kriteria berhasil di PRD
- [ ] Sudah dicoba dengan data benar, salah, dan kosong, tanpa error di console
- [ ] Tampil rapi di HP (360px) dan laptop
- [ ] Minimal 2 anggota tim bisa menjelaskan cara kerjanya tanpa buka AI
- [ ] Sudah di-commit ke GitHub

### Sebelum dikumpulkan
- [ ] Source code di GitHub + file `.sql` atau skema database
- [ ] Link hosting bisa dibuka dari HP orang lain, atau APK bisa diinstal
- [ ] Akun demo tiap peran ditulis di README
- [ ] Manual penggunaan (PDF), video tutorial, dan poster/flyer
- [ ] Tools AI yang dipakai dicantumkan di README

---

## 6. Presentasi, Dokumen & Rencana Kerja

Ceritakan masalahnya dulu, baru aplikasinya. Juri ingin lihat masalah nyata, lalu aplikasi yang benar-benar menyelesaikannya.

### Demo 10 menit

| Menit | Isi |
|---|---|
| 0:00–1:00 | Kenalan tim + masalah nyata dari narasumber |
| 1:00–2:00 | Solusinya dalam 1 kalimat + siapa penggunanya |
| 2:00–7:00 | Demo langsung alur utama: login, fitur inti, hasilnya. Tunjukkan juga di HP |
| 7:00–8:30 | Teknologi, keamanan yang dipasang, dan peran AI |
| 8:30–10:00 | Manfaat nyata + rencana ke depan |

**Tanya jawab 5 menit:** bagi tugas dulu, siapa yang jawab soal kode, desain, dan manfaat. Juri bisa minta kalian buka file kode dan menjelaskan bagian tertentu, misalnya login. Kalau tidak tahu, jawab jujur lalu jelaskan cara kalian akan mencari tahu. Latihan pakai prompt #9.

### Dokumen yang dibawa

| Dokumen | Isi minimal | Tools gratis |
|---|---|---|
| Manual penggunaan (PDF) | Sampul, tentang aplikasi, cara akses + akun demo, panduan tiap peran bernomor + screenshot, FAQ | Google Docs / Word |
| Video tutorial 3–5 menit | Pembuka 15 detik, demo tiap peran, penutup dengan link aplikasi | OBS Studio atau perekam layar HP; unggah ke YouTube (Unlisted) |
| Poster/flyer A3 atau A4 | Nama + logo, masalah → solusi, 3 fitur, screenshot di mockup, QR code ke aplikasi, nama tim | Canva |
| README repository | Deskripsi, fitur, screenshot, teknologi, cara instal, akun demo, link, anggota tim, tools AI yang dipakai | GitHub |
| Cadangan | Rekaman video demo, jaga-jaga kalau internet bermasalah | – |

Detail: [`docs/PANDUAN-PRESENTASI.md`](docs/PANDUAN-PRESENTASI.md) · Upload dan online-kan: [`docs/PANDUAN-GITHUB.md`](docs/PANDUAN-GITHUB.md)

### Rencana kerja tim

Isi tanggalnya sesuai jadwal lomba dari panitia.

| Tahap | Target | PJ |
|---|---|---|
| Minggu 1, awal | Ngobrol dengan pengguna, PRD disepakati tim | [nama] |
| Minggu 1, akhir | Rencana + database siap, fitur login jalan | [nama] |
| Minggu 2 | Fitur inti jalan dan sudah di-commit | [nama] |
| Minggu 3, awal | Coba di HP, jalankan checklist keamanan, rapikan tampilan | [nama] |
| Minggu 3, akhir | Online-kan, manual, video, poster, latihan presentasi | [nama] |

---

## 7. Praktik: Database Gratis dengan Supabase

Supabase kasih database PostgreSQL plus fitur login secara gratis. Jadi aplikasi HTML/JavaScript kalian bisa punya database beneran tanpa perlu server PHP. Waktunya sekitar 15 menit.

### Supabase atau PHP + MySQL?

| Pertimbangan | Supabase + GitHub Pages | PHP + MySQL di hosting gratis |
|---|---|---|
| Cocok untuk | Tim yang nyaman dengan HTML + JavaScript | Tim yang sudah biasa PHP / Laravel |
| Login | Sudah tersedia (Supabase Auth) | Dibuat sendiri (`password_hash`, session) |
| Keamanan data | Row Level Security wajib diaktifkan | Prepared statement + cek role di setiap halaman |
| Batas gratis | 2 proyek aktif, database 500 MB, dijeda otomatis kalau ±1 minggu tidak dipakai | Tergantung hosting; sering ada iklan atau batas CPU |
| Yang dikumpulkan | `schema.sql` + link GitHub Pages | File `.sql` hasil export + link hosting |

Dua-duanya sah buat lomba. Pilih yang paling kalian kuasai.

### Ringkasan 6 langkah
1. **Buat proyek** di supabase.com (daftar pakai GitHub), region **Southeast Asia (Singapore)**.
2. **Buat tabel** lewat **SQL Editor**. Minta AI membuat `schema.sql` dari PRD kalian, atau lihat contoh [`demo-app/schema.sql`](demo-app/schema.sql).
3. **Kunci keamanannya**: Row Level Security aktif di semua tabel, matikan pendaftaran publik kalau akun dibuat admin.
4. **Buat akun pengguna** di **Authentication → Users → Add user**.
5. **Sambungkan ke aplikasi**: salin **Project URL** dan **publishable/anon key** ke `config.js`. Jangan pernah pakai service role key di frontend.
6. **Uji**: buka aplikasi di jendela Incognito tanpa login, data tidak boleh tampil.

Langkah lengkap, contoh kode, dan solusi masalah umum: [`docs/PANDUAN-SUPABASE.md`](docs/PANDUAN-SUPABASE.md)

---

## 8. Dua Aplikasi Demo

| | Demo 1: [`demo-absen/`](demo-absen/) (AbsenKu) | Demo 2: [`demo-app/`](demo-app/) (PinjamLab) |
|---|---|---|
| Fungsi | Absen siswa H/I/S/A, rekap bulanan, unduh ke Excel | Catat pinjam dan kembali alat lab |
| Database | Tidak ada, data di browser (localStorage) | Supabase (gratis) |
| Login | Tidak ada | Ada, akun dibuat admin |
| Butuh internet | Tidak | Ya |
| Data dipakai bareng | Tidak, per perangkat | Ya, semua guru melihat data yang sama |
| Cocok untuk | Pemula | Aplikasi yang dipakai banyak orang |
| Contoh PRD | [`contoh/PRD-contoh-absenku.md`](contoh/PRD-contoh-absenku.md) | [`contoh/PRD-contoh-pinjamlab.md`](contoh/PRD-contoh-pinjamlab.md) |

Coba langsung:
- AbsenKu: https://mdts121220.github.io/starter-kit-lomba-ai/demo-absen/
- PinjamLab: https://mdts121220.github.io/starter-kit-lomba-ai/demo-app/

**Kapan butuh database?** Kalau datanya harus dipakai bareng oleh banyak orang di perangkat berbeda. Contoh: wali kelas mengabsen di laptop, lalu guru BK mau melihat rekapnya dari HP. Dengan AbsenKu itu tidak bisa; dengan database bisa.

Mau mencoba ulang demo yang dilakukan di sesi? Prompt yang dipakai ada di folder [`demo-live/`](demo-live/).

---

## 9. Aturan Emas & Isi Starter Kit

1. **Kalian yang pegang kemudi, AI yang bantu.** Kode apa pun di aplikasi kalian harus bisa kalian jelaskan ke juri.
2. **Satu prompt, satu fitur.** Jangan minta "buatkan aplikasi lengkap" sekaligus.
3. **Commit setiap fitur yang sudah jalan.** Kalau AI merusak sesuatu, kalian masih bisa balik.
4. **Jangan tempel data pribadi asli** (NISN, nomor HP) ke AI. Pakai data contoh saja.
5. **Jujur soal AI.** Tulis di README tools AI apa saja yang dipakai dan untuk apa.

### Mulai dari mana?
1. Download repo ini: tombol hijau **Code → Download ZIP**, atau **Fork** kalau sudah punya akun GitHub.
2. Isi [`PRD.md`](PRD.md) bareng tim.
3. Isi bagian Stack di [`AGENTS.md`](AGENTS.md).
4. Tempel AGENTS.md + PRD.md ke AI, lalu pakai prompt #1 di [`docs/BANK-PROMPT.md`](docs/BANK-PROMPT.md).

### Isi starter kit

| File | Gunanya |
|---|---|
| [`PRD.md`](PRD.md) | Template kebutuhan aplikasi; diisi pertama kali |
| [`AGENTS.md`](AGENTS.md) | Aturan kerja, kode, keamanan, dan UI untuk AI |
| [`CLAUDE.md`](CLAUDE.md) | Penghubung untuk Claude Code (mengambil isi AGENTS.md) |
| [`docs/WORKFLOW.md`](docs/WORKFLOW.md) | 7 langkah kerja bareng AI |
| [`docs/BANK-PROMPT.md`](docs/BANK-PROMPT.md) | Prompt #0–#9 siap pakai |
| [`docs/CHECKLIST-KEAMANAN.md`](docs/CHECKLIST-KEAMANAN.md) | Cek dulu sebelum dikumpulkan |
| [`docs/DEFINITION-OF-DONE.md`](docs/DEFINITION-OF-DONE.md) | Kapan fitur dan aplikasi dianggap selesai |
| [`docs/PANDUAN-GITHUB.md`](docs/PANDUAN-GITHUB.md) | Upload kode, hosting, dan database gratis |
| [`docs/PANDUAN-SUPABASE.md`](docs/PANDUAN-SUPABASE.md) | Database + login gratis, langkah demi langkah |
| [`docs/PANDUAN-PRESENTASI.md`](docs/PANDUAN-PRESENTASI.md) | Demo 10 menit, video, manual, poster |
| [`contoh/`](contoh/) | Contoh PRD AbsenKu dan PinjamLab |
| [`demo-absen/`](demo-absen/) | Demo 1: AbsenKu, tanpa database, bisa offline |
| [`demo-app/`](demo-app/) | Demo 2: PinjamLab, dengan database Supabase dan login |
| [`demo-live/`](demo-live/) | Prompt yang dipakai saat live demo di sesi |

Selamat berlomba. Sampai ketemu di meja juri!
