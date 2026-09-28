# Prompt C — Aplikasi (index.html + config.js)

Tempel di percakapan yang sama, setelah tabel berhasil dibuat di Supabase.

````text
Tabel sudah berhasil dibuat di Supabase. Sekarang buat aplikasinya, fitur F1 sampai F4:
- config.js: berisi SUPABASE_URL dan SUPABASE_ANON_KEY (biarkan nilainya kosong, nanti saya isi)
- index.html: satu file berisi HTML, CSS, dan JavaScript; memuat config.js lalu
  supabase-js v2 dari https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2
- F1 login email + password (Supabase Auth), tidak ada halaman daftar akun
- F2 form catat peminjaman: nama siswa, kelas (pilihan), alat (pilihan), jumlah
- F3 tombol "Kembalikan" dengan konfirmasi; mengubah status dan mengisi waktu kembali
- F4 daftar peminjaman terbaru di atas, kotak cari, filter status, ringkasan jumlah
Wajib: responsif di HP (tabel jadi kartu di layar kecil), semua teks dari pengguna
di-escape sebelum masuk HTML, pesan berhasil/gagal di setiap aksi, tombol keluar,
komentar Bahasa Indonesia. Tampilkan config.js dan index.html masing-masing dalam
SATU blok kode, lalu jelaskan cara kerjanya dalam 5 poin.
````

## Setelah kode keluar
1. Simpan kedua file di satu folder: `config.js` dan `index.html`.
2. Isi `config.js` dengan **Project URL** dan **publishable key** dari Supabase (lihat Panduan Guru).
3. Klik dua kali `index.html` → login pakai akun guru yang dibuat di Supabase → coba catat dan kembalikan.

**Kalau AI menggabungkan config ke dalam index.html**, balas: `Pisahkan konfigurasi ke file config.js.`
**Kalau error**, tekan F12 → Console → salin pesan merah → tempel ke AI: `Error ini muncul saat <langkah>. Jelaskan penyebabnya dulu, baru perbaiki.`

Berikutnya: [Prompt D — cek keamanan](4-prompt-D-cek-keamanan.md)
