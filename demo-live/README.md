# Panduan Demo Live: AbsenKu & PinjamLab

Demo 18 menit dalam 6 langkah. Demo 1 membangun **AbsenKu** dari nol bareng AI.
Demo 2 membedah **PinjamLab** yang sudah jadi dan tersambung ke Supabase.

| File di folder ini | Dipakai di |
|---|---|
| [`1-prompt-A-rencana.md`](1-prompt-A-rencana.md) | Langkah 1: minta rencana (AGENTS + PRD sudah digabung, tinggal Copy) |
| [`2-prompt-B-fitur-absen.md`](2-prompt-B-fitur-absen.md) | Langkah 2: bikin fitur F1 + F2 |
| [`3-prompt-C-rekap.md`](3-prompt-C-rekap.md) | Langkah 3: tambah fitur F3 rekap |
| [`4-prompt-D-cek-keamanan.md`](4-prompt-D-cek-keamanan.md) | Langkah 5: cek keamanan (opsional) |
| [`AGENTS-absenku.md`](AGENTS-absenku.md) | AGENTS.md dengan bagian Stack sudah diisi untuk AbsenKu |

> Cara pakai di depan kelas: buka file prompt di GitHub, klik ikon **Copy** di pojok kanan atas kotak prompt, lalu tempel ke ChatGPT/Gemini.

---

## 1. Persiapan H-1

### a. Akun guru demo di Supabase
1. **supabase.com/dashboard** → proyek **pinjamlab-demo**.
2. **Authentication → Users → Add user → Create new user**. Isi email + password (min. 6 karakter), centang **Auto Confirm User** → **Create user**.
3. Tulis email + password di kertas.

### b. Tutup pendaftaran publik
**Authentication → Sign In / Providers** → matikan **Allow new users to sign up** → **Save**.

### c. Aktifkan GitHub Pages
1. Repo ini → **Settings → Pages** → Source **Deploy from a branch** → Branch **main**, folder **/ (root)** → **Save**.
2. Tunggu 1–2 menit, lalu buka dari HP:
   - https://mdts121220.github.io/starter-kit-lomba-ai/demo-absen/
   - https://mdts121220.github.io/starter-kit-lomba-ai/demo-app/
3. Login ke PinjamLab pakai akun guru, catat satu peminjaman, cek muncul di Supabase **Table Editor → peminjaman**.

### d. Latihan & cadangan
- [ ] Jalankan langkah 1–6 sekali penuh dengan timer (target di bawah 18 menit)
- [ ] Rekam layar satu kali latihan (OBS atau `Win + Alt + R`)
- [ ] Download ZIP repo ini (**Code → Download ZIP**), ekstrak ke desktop dan flashdisk
- [ ] Bikin QR code untuk link repo dan link demo

---

## 2. Pagi Hari H: Tab Browser

| Tab | Isi | Catatan |
|---|---|---|
| 1 | Slide presentasi | |
| 2 | ChatGPT / Gemini, percakapan baru yang kosong | Sudah login |
| 3 | Repo ini, folder `demo-live/` | Sudah login GitHub (dipakai di langkah 6) |
| 4 | https://mdts121220.github.io/starter-kit-lomba-ai/demo-absen/ | Cadangan AbsenKu versi jadi |
| 5 | https://mdts121220.github.io/starter-kit-lomba-ai/demo-app/ | PinjamLab, belum login |
| 6 | Supabase → pinjamlab-demo → Table Editor | |

Juga siapkan: Notepad++ / VS Code dengan folder kosong `demo-absenku`, dan QR code.

**Cek 10 menit sebelum mulai:**
- [ ] Internet jalan, hotspot HP siap
- [ ] Supabase statusnya **Active** (kalau **Paused**, klik **Restore**, tunggu 2–3 menit)
- [ ] Login PinjamLab sekali, lalu logout
- [ ] Font browser & editor diperbesar (`Ctrl +`)
- [ ] Notifikasi laptop dimatikan

---

## 3. Demo 1: Bikin AbsenKu Bareng AI (9 menit)

### Langkah 1 — Bekal AI (2 menit)
1. Tab 3: buka [`AGENTS-absenku.md`](AGENTS-absenku.md), tunjukkan bagian **Stack** dan **Aturan Keamanan**.
2. Buka [`../contoh/PRD-contoh-absenku.md`](../contoh/PRD-contoh-absenku.md), tunjukkan **Masalah** dan 4 fitur wajib.
3. Buka [`1-prompt-A-rencana.md`](1-prompt-A-rencana.md) → **Copy** → tempel di tab 2 → Enter.

> **Ucapkan:** "AI tidak kenal proyek kita. Jadi saya kasih dua bekal: aturan main dan kebutuhan aplikasi. Perhatikan, saya minta rencana dulu, belum kode."

Sambil menunggu: sorot satu risiko keamanan yang disebut AI (biasanya XSS).

### Langkah 2 — AI bikin AbsenKu (5 menit)
1. Buka [`2-prompt-B-fitur-absen.md`](2-prompt-B-fitur-absen.md) → **Copy** → tempel di tab 2.
2. Copy kode jawaban AI → Notepad++ → **Save As** `index.html` → buka di browser.
3. Tambah kelas + 4–5 siswa → absen H/I/S/A → tekan **F5**, data tetap ada.
4. `Ctrl + F` di kode: cari `localStorage` dan fungsi escape.

> **Ucapkan:** "Datanya tetap ada karena disimpan di localStorage, penyimpanan kecil di browser. Tapi data ini cuma ada di laptop ini. Ingat ini untuk demo kedua."

### Langkah 3 — Tambah satu fitur (2 menit)
1. Buka [`3-prompt-C-rekap.md`](3-prompt-C-rekap.md) → **Copy** → tempel.
2. Copy kode baru → timpa `index.html` → Save → F5 → buka rekap.

> **Ucapkan:** "Satu prompt, satu fitur. Di proyek lomba, sekarang saatnya commit."

---

## 4. Demo 2: Bedah PinjamLab & Uji Keamanan (6 menit)

> **Pembuka:** "AbsenKu datanya cuma di laptop ini. Kalau wali kelas dan guru BK mau lihat data yang sama dari HP masing-masing, kita butuh database. Contohnya PinjamLab."

### Langkah 4 — Bedah PinjamLab (4 menit)
| # | Buka | Tunjukkan | Ucapkan |
|---|---|---|---|
| 1 | Tab 5 | Halaman login | "Tidak bisa dipakai tanpa login. Akun dibuat admin." |
| 2 | Tab 6 → Table Editor → peminjaman | Kolom tabel, tidak ada label "RLS disabled" | "Ini databasenya, di server Supabase Singapura." |
| 3 | Authentication → Policies (atau Database → Policies) | 3 aturan: lihat, tambah, ubah | "Row Level Security: hanya guru yang login boleh lihat, tambah, ubah. Sengaja tidak ada aturan hapus." |
| 4 | Tab 3 → [`../demo-app/config.js`](../demo-app/config.js) | URL + publishable key | "Kunci ini memang kelihatan dan aman, karena RLS yang menjaga. Secret key yang tidak boleh kelihatan." |
| 5 | Tab 5 → login | Catat satu peminjaman | |
| 6 | Tab 6 → refresh | Baris baru muncul | "Data sudah di server. Guru lain dari HP akan lihat data yang sama." |
| 7 | Tab 5 → **Kembalikan** | Konfirmasi + status berubah | "Konfirmasi sebelum aksi penting itu bagian dari UI/UX." |

### Langkah 5 — Uji keamanan (2 menit)
1. PinjamLab: catat peminjaman dengan nama siswa `<script>alert(1)</script>` → tampil sebagai teks, tidak ada pop-up.
2. `Ctrl + Shift + N` (Incognito) → buka PinjamLab → hanya halaman login, tidak ada data.
3. Opsional: [`4-prompt-D-cek-keamanan.md`](4-prompt-D-cek-keamanan.md) untuk AbsenKu.

---

## 5. Langkah 6 — Online-kan & Buka dari HP (3 menit)
1. Tab 3 → tab **Commits**. "Setiap commit itu save point."
2. **Add file → Create new file** → nama: `absenku-live/index.html`.
3. Tempel kode AbsenKu hasil demo 1 → **Commit changes** (`Tambah AbsenKu hasil live demo`).
4. **Settings → Pages**: tunjukkan Pages aktif dari `main`.
5. Tunggu ±1 menit → buka https://mdts121220.github.io/starter-kit-lomba-ai/absenku-live/
6. Tampilkan QR code, siswa buka dari HP dan coba absen.

> **Ucapkan:** "Data AbsenKu tersimpan di HP masing-masing, jadi tidak saling tercampur. Ini bedanya dengan PinjamLab."

Kalau masih 404 setelah 1 menit, pakai link `demo-absen/` yang sudah online.

---

## 6. Kalau Ada Masalah

| Situasi | Yang dilakukan |
|---|---|
| AI lambat / kuota habis | Pindah Gemini ↔ ChatGPT, tempel Prompt A lagi |
| AI langsung menulis kode | Balas: `Stop. Saya minta rencana dulu, belum kode.` |
| AI membagi jadi beberapa file | Balas: `Gabungkan jadi SATU file index.html saja.` |
| Kode error saat dibuka | F12 → Console → salin pesan merah → prompt #3 di [`BANK-PROMPT.md`](../docs/BANK-PROMPT.md) |
| Masih error setelah 2 menit | Buka tab 4 (AbsenKu versi jadi), jelaskan kodenya |
| Internet mati | Hotspot HP; kalau tetap tidak bisa, buka `demo-absen/index.html` dari ZIP di desktop (jalan offline), lalu putar rekaman demo |
| PinjamLab tidak bisa login | Supabase Paused? **Restore**. Password lupa? Reset di Authentication → Users |
| GitHub Pages belum update | Pakai link `demo-absen/` |
| Waktu mepet | Lewati langkah 3 dan upload di langkah 6 |

## Contekan satu baris per langkah
1. `AGENTS-absenku.md` + PRD → **Prompt A** (rencana)
2. **Prompt B** → Save `index.html` → buka → absen → F5
3. **Prompt C** → timpa → F5 → rekap
4. Login page → Table Editor → Policies → config.js → login → catat → refresh → Kembalikan
5. XSS di nama siswa → Incognito
6. Commits → Create `absenku-live/index.html` → Commit → Pages → QR
