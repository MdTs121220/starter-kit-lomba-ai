# Panduan Supabase: Database Gratis untuk Aplikasi Web

Supabase memberi database PostgreSQL + fitur login secara **gratis**, jadi aplikasi HTML/JavaScript
bisa punya database sungguhan tanpa server PHP. Waktu: ±15 menit.
Contoh yang sudah jadi: folder [`demo-app/`](../demo-app/).

## Supabase atau PHP + MySQL?

| Pertimbangan | Supabase + GitHub Pages | PHP + MySQL di hosting gratis |
|---|---|---|
| Cocok untuk | Tim yang nyaman dengan HTML + JavaScript | Tim yang sudah biasa PHP / Laravel |
| Login | Sudah tersedia (Supabase Auth) | Dibuat sendiri (`password_hash`, session) |
| Keamanan data | Row Level Security **wajib** diaktifkan | Prepared statement + cek role di setiap halaman |
| Batas gratis | 2 proyek aktif, database 500 MB, dijeda otomatis kalau ±1 minggu tidak dipakai | Tergantung hosting; sering ada iklan atau batas CPU |
| Yang dikumpulkan | `schema.sql` + link GitHub Pages | File `.sql` hasil export + link hosting |

Keduanya sah untuk lomba. Pilih yang paling dikuasai tim.

## Langkah 1: Buat proyek
1. Buka **supabase.com** → **Start your project** → daftar pakai akun GitHub.
2. **New project**: isi nama (contoh `absensi-tim-noken`), buat **database password** dan simpan baik-baik,
   pilih region **Southeast Asia (Singapore)**.
3. **Create new project**, tunggu 1–2 menit.

## Langkah 2: Buat tabel dengan SQL
1. Menu **SQL Editor** → **New query**.
2. Tempel skema tabel. Minta AI membuatnya dari PRD (prompt di bawah), atau lihat contoh `demo-app/schema.sql`.
3. Klik **Run**, cek hasilnya di **Table Editor**.

```
Berdasarkan PRD berikut, buatkan schema.sql untuk Supabase (PostgreSQL):
- tabel dengan tipe data dan CHECK constraint untuk validasi
- aktifkan Row Level Security di SEMUA tabel
- policy: hanya user yang login (authenticated) boleh select/insert/update
- beri komentar Bahasa Indonesia di setiap bagian
<tempel PRD.md>
```

## Langkah 3: Kunci keamanannya
**Row Level Security (RLS)** = aturan "siapa boleh membaca atau mengubah baris data".
Kunci publik Supabase memang terlihat di kode frontend, jadi **tanpa RLS siapa pun bisa membaca dan menghapus seluruh data**.

- [ ] Di Table Editor, tidak ada tabel berlabel **RLS disabled** / **Unrestricted**
- [ ] **Authentication → Sign In / Providers**: matikan **Allow new users to sign up** kalau akun hanya dibuat admin
- [ ] Tidak ada policy `using (true)` untuk pengguna anonim (`anon`)
- [ ] Kunci **service_role / secret** tidak pernah masuk ke kode atau GitHub

## Langkah 4: Buat akun pengguna
**Authentication → Users → Add user → Create new user**. Buat akun demo tiap peran dan tulis di README untuk juri.

## Langkah 5: Sambungkan ke aplikasi
1. **Project Settings → API Keys** (di sebagian tampilan: **Settings → API**). Salin **Project URL** dan **anon / publishable key**.
2. Isi `config.js`:

```js
window.APP_CONFIG = {
  SUPABASE_URL: "https://xxxx.supabase.co",
  SUPABASE_ANON_KEY: "sb_publishable_xxxx"   // BUKAN service_role key
};
```

3. Pakai di halaman:

```html
<script src="config.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2"></script>
<script>
  const sb = supabase.createClient(APP_CONFIG.SUPABASE_URL, APP_CONFIG.SUPABASE_ANON_KEY);

  async function contoh(email, password) {
    // login
    const { error: errLogin } = await sb.auth.signInWithPassword({ email, password });
    if (errLogin) return alert("Email atau password salah");
    // tambah data
    await sb.from("peminjaman").insert({ nama_siswa: "Yohana", kelas: "XI TJKT 1", alat: "LAN tester" });
    // ambil data
    const { data, error } = await sb.from("peminjaman").select("*");
    console.log(data, error);
  }
</script>
```

Bingung? Minta AI: *"Sambungkan index.html ini ke Supabase memakai config.js, jelaskan setiap baris yang berhubungan dengan database."*

## Langkah 6: Uji dan kumpulkan
- [ ] Buka aplikasi di jendela **Incognito** tanpa login: data tidak boleh tampil
- [ ] Login, tambah data, cek muncul di Table Editor
- [ ] Simpan `schema.sql` di repository GitHub (ini yang dikumpulkan sebagai "database")
- [ ] H-1 lomba, buka dashboard Supabase; kalau proyek **Paused**, klik **Restore**

## Masalah umum

| Masalah | Penyebab umum | Solusi |
|---|---|---|
| Data kosong padahal sudah diisi | RLS aktif tapi policy select belum ada, atau belum login | Tambah policy / pastikan login berhasil |
| `Invalid API key` | Key salah salin atau dari proyek lain | Salin ulang dari Project Settings → API Keys |
| `new row violates row-level security policy` | Policy insert tidak cocok | Periksa policy insert dan kolom pemilik data |
| Tiba-tiba tidak bisa connect | Proyek dijeda karena lama tidak dipakai | Restore dari dashboard |

> Batas paket gratis bisa berubah. Cek https://supabase.com/pricing sebelum memutuskan.
