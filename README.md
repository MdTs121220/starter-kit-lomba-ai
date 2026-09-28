# Starter Kit Lomba Aplikasi Web

**Perancangan dan Pengembangan Aplikasi Berbasis Web Berbantuan Artificial Intelligence (AI)**
SMK Negeri 1 Sorong · 2026

Kit ini buat bantu tim kalian bikin aplikasi bareng AI dengan cara yang **terarah, aman, dan bisa kalian jelaskan** di depan juri.

> **Materi lengkap sesi 29 September 2026 ada di [`MATERI-SISWA.md`](MATERI-SISWA.md).** Baca itu dulu, lalu pakai file-file di bawah saat mengerjakan proyek.

## Isi kit

```
starter-kit-lomba-ai/
├── README.md                  ← yang sedang kalian baca
├── MATERI-SISWA.md            ← MATERI LENGKAP SESI (baca ini dulu)
├── PRD.md                     ← ISI PALING DULU: kebutuhan aplikasi kalian
├── AGENTS.md                  ← aturan main buat AI (tempel ke AI di awal)
├── CLAUDE.md                  ← penghubung untuk Claude Code (mengambil isi AGENTS.md)
├── docs/
│   ├── WORKFLOW.md            ← 7 langkah kerja bareng AI
│   ├── BANK-PROMPT.md         ← kumpulan prompt siap pakai
│   ├── CHECKLIST-KEAMANAN.md  ← cek dulu sebelum dikumpulkan
│   ├── DEFINITION-OF-DONE.md  ← kapan fitur dianggap "selesai"
│   ├── PANDUAN-GITHUB.md      ← upload kode & online-kan gratis
│   ├── PANDUAN-SUPABASE.md    ← database + login gratis, langkah demi langkah
│   └── PANDUAN-PRESENTASI.md  ← demo 10 menit, video, manual, poster
├── contoh/
│   ├── PRD-contoh-absenku.md
│   └── PRD-contoh-pinjamlab.md
├── demo-live/                ← PANDUAN DEMO LIVE + prompt siap Copy (untuk pemateri & latihan)
├── demo-absen/                ← DEMO 1: AbsenKu, absen siswa TANPA database (bisa offline)
└── demo-app/                  ← DEMO 2: PinjamLab, pinjam alat lab DENGAN database Supabase
```

## Dua aplikasi demo

| | Demo 1: `demo-absen/` (AbsenKu) | Demo 2: `demo-app/` (PinjamLab) |
|---|---|---|
| Database | Tidak ada, data di browser | Supabase (gratis) |
| Login | Tidak ada | Ada |
| Butuh internet | Tidak | Ya |
| Cocok untuk | Pemula, demo cadangan | Aplikasi yang dipakai banyak guru |

Coba langsung (setelah GitHub Pages aktif):
- AbsenKu: https://mdts121220.github.io/starter-kit-lomba-ai/demo-absen/
- PinjamLab: https://mdts121220.github.io/starter-kit-lomba-ai/demo-app/

## Mulai dalam 6 langkah

1. **Download atau fork** kit ini, lalu bikin repository GitHub buat tim kalian.
2. **Isi `PRD.md`** bareng tim. Ngobrol dulu dengan calon pengguna (guru, TU, petugas perpus). Langkah ini jangan dilewati.
3. **Pilih teknologi** yang paling kalian kuasai, lalu tulis di `AGENTS.md` bagian *Stack*.
4. **Mulai ngobrol dengan AI**: tempel `AGENTS.md` + `PRD.md`, lalu minta *rencana* dulu, belum kode. Lihat prompt #1 di `docs/BANK-PROMPT.md`.
5. **Butuh database?** Pakai PHP + MySQL, atau Supabase yang gratis: ikuti `docs/PANDUAN-SUPABASE.md`.
6. **Bikin per fitur**, coba, commit ke GitHub, ulangi. Sebelum dikumpulkan, jalankan `docs/CHECKLIST-KEAMANAN.md`.

## Tools AI yang bisa dipakai gratis (September 2026)

| Jenis | Contoh | Dipakai buat |
|---|---|---|
| Chat AI | ChatGPT, Gemini, Claude, Copilot | Curah ide, PRD, rancang database, cari bug, dokumentasi |
| App builder | Google AI Studio (mode *Build*) | Bikin contoh tampilan cepat dari prompt |
| IDE + agen AI | Google Antigravity, VS Code + GitHub Copilot | Ngoding satu proyek penuh bareng AI |
| Agen di terminal | Codex CLI (ada di akun ChatGPT gratis, kuota kecil), Antigravity CLI | Level lanjut: AI membaca dan mengubah banyak file sendiri |
| Berbayar (info saja) | Claude Code (perlu langganan Claude) | Tidak wajib |

> Kuota gratis tiap tool bisa berubah kapan saja. Siapkan minimal **dua** tool cadangan.

### Tiap tool beda nama filenya
AI coding agent membaca file instruksi di folder utama proyek, tapi namanya beda-beda:
- **AGENTS.md** → Codex, Antigravity, Copilot, dan banyak tool lain
- **CLAUDE.md** → Claude Code (di kit ini isinya sudah mengambil AGENTS.md)
- **Chat biasa** (ChatGPT/Gemini di web) → tidak bisa baca file, jadi **tempel isi AGENTS.md** di awal percakapan

## Aturan emas
1. **Kalian yang pegang kemudi, AI yang bantu.** Kode apa pun di aplikasi kalian harus bisa kalian jelaskan ke juri.
2. **Satu prompt, satu fitur.** Jangan minta "buatkan aplikasi lengkap" sekaligus.
3. **Commit setiap fitur yang sudah jalan.** Kalau AI merusak sesuatu, kalian masih bisa balik.
4. **Jangan tempel data pribadi asli** (NISN, nomor HP) ke AI. Pakai data contoh saja.
5. **Jujur soal AI.** Tulis di README tools AI apa saja yang dipakai dan untuk apa.
