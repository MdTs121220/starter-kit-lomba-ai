# PinjamLab — Aplikasi Demo

Aplikasi contoh untuk sesi *workflow* AI: pencatatan peminjaman alat lab komputer.
Satu file HTML, tanpa server, **100% gratis** (GitHub Pages + Supabase free tier).

| File | Isi |
|---|---|
| `index.html` | Seluruh aplikasi (tampilan + logika) |
| `config.js` | Alamat dan kunci publik Supabase |
| `schema.sql` | Tabel database + aturan keamanan (RLS) |

## Fitur
- Login guru/petugas lab (Supabase Auth)
- Catat peminjaman: nama siswa, kelas, alat, jumlah
- Tandai alat dikembalikan (data tidak bisa dihapus, untuk jejak audit)
- Cari dan filter status, ringkasan angka di atas
- Responsif: tabel berubah jadi kartu di HP
- **Mode Demo**: kalau `config.js` kosong, aplikasi tetap jalan dengan data di browser

## Keamanan yang diterapkan
1. **Row Level Security** aktif, hanya user login yang bisa baca/tulis.
2. Pendaftaran akun publik dimatikan; akun guru dibuat oleh admin.
3. Semua teks dari pengguna di-*escape* sebelum ditampilkan (cegah XSS).
4. Validasi input dua lapis: di browser dan di database (`CHECK`).
5. Hanya *anon/publishable key* di frontend. *Service role key* tidak pernah ditaruh di kode.

## Cara menjalankan

### A. Coba cepat (Mode Demo)
Buka `index.html` di browser. Login dengan email apa saja dan password minimal 6 karakter.

### B. Pakai database sungguhan (Supabase, gratis)
1. Daftar di https://supabase.com (bisa pakai akun GitHub) → **New project**.
2. Buka **SQL Editor** → tempel isi `schema.sql` → **Run**.
3. **Authentication → Sign In / Providers**: matikan *Allow new users to sign up*.
4. **Authentication → Users → Add user**: buat email + password guru.
5. **Project Settings → API**: salin *Project URL* dan *anon/publishable key* ke `config.js`.
6. Buka `index.html`, login dengan akun guru tadi.

> Catatan: proyek Supabase gratis akan di-*pause* kalau tidak dipakai sekitar 1 minggu.
> Buka dashboard Supabase dan klik *Restore* sebelum presentasi.

### C. Online-kan dengan GitHub Pages (gratis)
1. Buat repository baru di GitHub (Public).
2. **Add file → Upload files** → unggah `index.html` dan `config.js` → **Commit**.
3. **Settings → Pages** → Source: *Deploy from a branch* → Branch: `main` / `(root)` → **Save**.
4. Tunggu 1–2 menit, link muncul: `https://<username>.github.io/<nama-repo>/`
