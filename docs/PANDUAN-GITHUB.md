# Panduan GitHub (Gratis)

## 1. Bikin akun & repository
1. Daftar di https://github.com. Pakai email aktif dan username yang rapi, misalnya `tim-noken-smkn1`.
2. Klik **+** → **New repository** → isi nama, misalnya `nama-aplikasi` → pilih **Public** → centang *Add a README* → **Create**.
3. Ajak anggota tim: **Settings → Collaborators → Add people**.

## 2. Upload kode (tanpa terminal)
1. Di halaman repository, klik **Add file → Upload files**.
2. Seret semua isi folder proyek (kecuali `.env`, `node_modules`, dan `vendor`).
3. Tulis pesan commit yang jelas, misalnya `Tambah fitur login guru`, lalu klik **Commit changes**.

## 3. Upload kode (pakai terminal, lebih rapi)
```bash
git init
git add .
git commit -m "Versi awal: struktur proyek dan halaman login"
git branch -M main
git remote add origin https://github.com/<username>/<nama-repo>.git
git push -u origin main
```
Setiap satu fitur selesai:
```bash
git add .
git commit -m "Tambah fitur rekap absensi per kelas"
git push
```
Kalau AI merusak kode, buka tab **Commits**, lalu ambil lagi file dari commit sebelumnya.

## 4. Online-kan gratis
| Jenis aplikasi | Tempat gratis | Catatan |
|---|---|---|
| HTML/CSS/JS (+ Supabase/Firebase) | **GitHub Pages** | Paling gampang, langsung dari repository |
| HTML/JS/React | Vercel, Netlify | Sambungkan ke repository GitHub |
| PHP + MySQL | InfinityFree, AwardSpace (paket gratis) | Upload lewat File Manager/FTP, buat database di panel |
| Android | File APK di **GitHub Releases** | Tab *Releases* → *Create a new release* → lampirkan APK |

### GitHub Pages
**Settings → Pages** → Source: *Deploy from a branch* → Branch `main` / `(root)` → **Save**.
Link-nya: `https://<username>.github.io/<nama-repo>/`, aktif 1–2 menit kemudian.

## 5. Database gratis (kalau tidak pakai PHP)
- **Supabase** (PostgreSQL + login): gratis 2 proyek aktif, database 500 MB. Proyek berhenti sementara kalau seminggu tidak dipakai, jadi buka dashboard dan klik *Restore* sebelum lomba.
- **Firebase** (Firestore + Auth): paket Spark gratis.

Langkah lengkap Supabase: lihat [`PANDUAN-SUPABASE.md`](PANDUAN-SUPABASE.md).

⚠️ Paket gratis bisa berubah. Cek dulu halaman harga resminya sebelum memilih.
