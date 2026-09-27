# Panduan GitHub (Gratis)

## 1. Buat akun & repository
1. Daftar di https://github.com (pakai email aktif, username profesional, contoh `tim-noken-smkn1`).
2. Klik **+** → **New repository** → nama: `nama-aplikasi` → **Public** → centang *Add a README* → **Create**.
3. Undang anggota tim: **Settings → Collaborators → Add people**.

## 2. Upload kode (cara tanpa terminal)
1. Di halaman repository: **Add file → Upload files**.
2. Seret seluruh isi folder proyek (kecuali `.env`, `node_modules`, `vendor`).
3. Tulis pesan commit yang jelas, contoh: `Tambah fitur login guru` → **Commit changes**.

## 3. Upload kode (cara terminal, lebih rapi)
```bash
git init
git add .
git commit -m "Versi awal: struktur proyek dan halaman login"
git branch -M main
git remote add origin https://github.com/<username>/<nama-repo>.git
git push -u origin main
```
Setiap fitur selesai:
```bash
git add .
git commit -m "Tambah fitur rekap absensi per kelas"
git push
```
Kalau AI merusak kode, lihat riwayat di tab **Commits** dan kembalikan file dari commit sebelumnya.

## 4. Hosting gratis
| Jenis aplikasi | Hosting gratis | Catatan |
|---|---|---|
| HTML/CSS/JS (+ Supabase/Firebase) | **GitHub Pages** | Paling mudah, langsung dari repository |
| HTML/JS/React | Vercel, Netlify | Hubungkan ke repository GitHub |
| PHP + MySQL | InfinityFree, AwardSpace (paket gratis) | Unggah via File Manager/FTP, buat database di panel |
| Android | File APK di **GitHub Releases** | Tab *Releases* → *Create a new release* → lampirkan APK |

### GitHub Pages
**Settings → Pages** → Source: *Deploy from a branch* → Branch `main` / `(root)` → **Save**.
Link: `https://<username>.github.io/<nama-repo>/` (aktif 1–2 menit kemudian).

## 5. Database gratis (untuk aplikasi tanpa server PHP)
- **Supabase** (PostgreSQL + login): gratis 2 proyek aktif, 500 MB database. Proyek di-*pause* kalau tidak dipakai ±1 minggu, jadi buka dashboard dan *Restore* sebelum lomba.
- **Firebase** (Firestore + Auth): paket Spark gratis.

Langkah lengkap Supabase: lihat [`PANDUAN-SUPABASE.md`](PANDUAN-SUPABASE.md).

⚠️ Paket gratis bisa berubah. Cek halaman harga resmi sebelum memilih.
