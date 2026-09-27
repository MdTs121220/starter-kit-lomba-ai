# Checklist Keamanan Sebelum Dikumpulkan

Nilai **Kode & Keamanan = 15%**. Centang semuanya dulu sebelum mengumpulkan.

## Tiga uji yang pasti juri coba
| Uji | Yang diketik / dilakukan | Hasil yang benar |
|---|---|---|
| SQL injection | `' OR '1'='1` di kolom login | Login ditolak, tidak muncul error SQL |
| XSS | `<script>alert(1)</script>` di kolom nama | Muncul sebagai teks biasa, tidak ada pop-up |
| Hak akses | Login sebagai siswa, lalu buka alamat halaman admin | Ditolak |

## Login & hak akses
- [ ] Password disimpan dalam bentuk hash (bukan teks biasa, bukan MD5 atau SHA1)
- [ ] Kalau login salah, pesannya umum saja: "email atau password salah" (jangan bocorkan mana yang salah)
- [ ] Setiap halaman dan aksi yang dilindungi **mengecek login dan role di server**, bukan cuma menyembunyikan tombol
- [ ] Logout benar-benar menghapus sesi
- [ ] Tidak ada akun bawaan seperti `admin/admin` yang ketinggalan

## Input & database
- [ ] Semua query pakai *prepared statement* atau query builder
- [ ] Input dicek di browser DAN di server/database
- [ ] Form yang mengubah data pakai token CSRF (untuk PHP/Laravel)

## Tampilan data
- [ ] Data dari pengguna di-escape sebelum ditampilkan (`htmlspecialchars()`, `{{ }}` di Blade, atau fungsi escape di JS)
- [ ] Pesan error teknis (stack trace, query SQL) tidak muncul ke pengguna

## Rahasia & pengaturan
- [ ] Password database, API key rahasia, atau *service role key* tidak ada di GitHub
- [ ] File `.env` sudah masuk `.gitignore`
- [ ] Mode debug dimatikan di versi yang di-online-kan
- [ ] Supabase: RLS aktif di semua tabel · Firebase: rules tidak `allow read, write: if true`

## Upload file (kalau ada)
- [ ] Jenis file dibatasi (misal hanya jpg/png/pdf) dan ukurannya juga dibatasi
- [ ] Nama file diganti otomatis
- [ ] File yang di-upload tidak bisa dijalankan sebagai kode

## Data pribadi
- [ ] Demo pakai data contoh, bukan data siswa asli
- [ ] Data pribadi asli tidak ditempel ke chat AI
