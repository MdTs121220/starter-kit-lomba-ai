# Starter Kit Lomba Aplikasi Berbantuan AI

**Perancangan dan Pengembangan Aplikasi Berbasis Web Berbantuan Artificial Intelligence (AI)**
SMK Negeri 1 Sorong · 2026

Kit ini membantu tim kalian membangun aplikasi dengan AI secara **terarah, aman, dan bisa dipertanggungjawabkan** di depan juri.

## Isi kit

```
starter-kit-lomba-ai/
├── README.md                  ← kalian sedang membaca ini
├── PRD.md                     ← ISI PERTAMA: kebutuhan aplikasi kalian
├── AGENTS.md                  ← aturan kerja untuk AI (tempel ke AI di awal)
├── CLAUDE.md                  ← penghubung untuk Claude Code (membaca AGENTS.md)
├── docs/
│   ├── WORKFLOW.md            ← 7 langkah kerja dengan AI
│   ├── BANK-PROMPT.md         ← kumpulan prompt siap pakai
│   ├── CHECKLIST-KEAMANAN.md  ← cek sebelum dikumpulkan
│   ├── DEFINITION-OF-DONE.md  ← kapan fitur dianggap "selesai"
│   ├── PANDUAN-GITHUB.md      ← upload kode & hosting gratis
│   ├── PANDUAN-SUPABASE.md    ← database + login gratis, langkah demi langkah
│   └── PANDUAN-PRESENTASI.md  ← demo 10 menit, video, manual, poster
├── contoh/
│   └── PRD-contoh-pinjamlab.md
└── demo-app/                  ← aplikasi contoh PinjamLab (lihat README-nya)
```

## Mulai dalam 6 langkah

1. **Fork / download** kit ini, lalu buat repository GitHub untuk tim kalian.
2. **Isi `PRD.md`** bersama tim. Wawancarai calon pengguna (guru, TU, petugas perpus). Jangan lewati langkah ini.
3. **Pilih stack** yang kalian kuasai dan catat di `AGENTS.md` bagian *Stack*.
4. **Mulai sesi AI** dengan menempelkan `AGENTS.md` + `PRD.md`, lalu minta *rencana*, bukan kode. Lihat `docs/BANK-PROMPT.md` prompt #1.
5. **Butuh database?** Pakai PHP + MySQL, atau Supabase gratis: ikuti `docs/PANDUAN-SUPABASE.md`.
6. **Bangun per fitur**, uji, commit ke GitHub, ulangi. Sebelum mengumpulkan, jalankan `docs/CHECKLIST-KEAMANAN.md`.

## Pilihan tools AI (versi gratis, September 2026)

| Kategori | Contoh | Cocok untuk |
|---|---|---|
| Chat AI | ChatGPT, Gemini, Claude, Copilot | Brainstorm, PRD, desain database, debug, dokumentasi |
| App builder | Google AI Studio (mode *Build*) | Prototipe UI cepat dari prompt |
| IDE dengan agen AI | Google Antigravity, VS Code + GitHub Copilot | Ngoding proyek utuh bersama AI |
| Agen di terminal | Codex CLI (tersedia di paket ChatGPT Free, kuota terbatas), Antigravity CLI | Tingkat lanjut: AI membaca & mengubah banyak file |
| Berbayar (info) | Claude Code (butuh paket Claude berbayar) | Referensi, tidak wajib |

> Kuota gratis tiap tool bisa berubah sewaktu-waktu. Siapkan minimal **dua** tool cadangan.

### Nama file instruksi per tool
AI coding agent membaca file instruksi di akar proyek, tapi namanya berbeda:
- **AGENTS.md** → Codex, Antigravity, Copilot, dan banyak tool lain
- **CLAUDE.md** → Claude Code (file di kit ini sudah mengarahkan ke AGENTS.md)
- **Chat biasa** (ChatGPT/Gemini web) → tidak membaca file otomatis, **tempel isi AGENTS.md secara manual** di awal percakapan.

## Aturan emas
1. **Kalian pilotnya, AI co-pilot.** Setiap baris kode harus bisa kalian jelaskan ke juri.
2. **Satu prompt, satu fitur.** Jangan minta "buatkan aplikasi lengkap".
3. **Commit setiap fitur yang jalan.** Kalau AI merusak sesuatu, kalian bisa kembali.
4. **Jangan tempel data pribadi asli** (NISN, nomor HP, dll.) ke AI. Pakai data contoh.
5. **Jujur soal AI.** Cantumkan tools AI yang dipakai di dokumentasi.
