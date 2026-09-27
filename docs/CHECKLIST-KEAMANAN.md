# Checklist Keamanan Sebelum Dikumpulkan

Kriteria **Kualitas Kode & Keamanan = 15%**. Centang semua sebelum mengumpulkan.

## Autentikasi & akses
- [ ] Password disimpan ter-hash (bukan plain text, bukan MD5/SHA1)
- [ ] Login salah memberi pesan umum ("email atau password salah"), tidak membocorkan mana yang salah
- [ ] Setiap halaman/aksi yang dilindungi **mengecek login dan role di server**, bukan hanya menyembunyikan tombol
- [ ] Coba buka URL halaman admin saat login sebagai siswa → harus ditolak
- [ ] Logout benar-benar menghapus sesi
- [ ] Tidak ada akun default seperti `admin/admin` yang tertinggal

## Input & database
- [ ] Semua query memakai *prepared statement* / query builder
- [ ] Coba isi form dengan `' OR '1'='1` → tidak boleh lolos login / error SQL tampil
- [ ] Input divalidasi di browser DAN di server/database
- [ ] Form yang mengubah data memakai token CSRF (untuk PHP/Laravel)

## Output
- [ ] Data dari pengguna di-escape sebelum ditampilkan (`htmlspecialchars()`, `{{ }}` di Blade, atau fungsi escape di JS)
- [ ] Coba isi nama dengan `<script>alert(1)</script>` → harus tampil sebagai teks, bukan muncul pop-up
- [ ] Pesan error teknis (stack trace, query SQL) tidak tampil ke pengguna

## Rahasia & konfigurasi
- [ ] Tidak ada password database, API key rahasia, atau *service role key* di repository GitHub
- [ ] File `.env` masuk `.gitignore`
- [ ] Mode debug dimatikan di versi yang di-hosting
- [ ] Supabase: RLS aktif di semua tabel · Firebase: Security Rules tidak `allow read, write: if true`

## Upload file (jika ada)
- [ ] Tipe file dibatasi (misal hanya jpg/png/pdf) dan ukuran dibatasi
- [ ] Nama file diganti otomatis
- [ ] File upload tidak bisa dieksekusi sebagai kode

## Data pribadi
- [ ] Data yang dipakai untuk demo adalah data contoh, bukan data siswa asli
- [ ] Tidak menempelkan data pribadi asli ke chat AI
