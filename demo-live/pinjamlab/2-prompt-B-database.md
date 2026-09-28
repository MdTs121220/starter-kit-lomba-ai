# Prompt B — Skema Database (schema.sql)

Tempel di percakapan yang sama, setelah rencana disetujui.

````text
Rencana disetujui. Sekarang buat HANYA file schema.sql untuk Supabase (PostgreSQL):
- tabel peminjaman sesuai rencana, dengan CHECK constraint untuk validasi
  (nama minimal 3 huruf, jumlah 1 sampai 50, status hanya 'dipinjam' atau 'dikembalikan')
- kolom dicatat_oleh berisi id pengguna yang login (default auth.uid())
- aktifkan Row Level Security
- policy untuk role authenticated saja: select, insert (hanya atas nama dirinya), update
- JANGAN buat policy delete
- beri komentar Bahasa Indonesia di setiap bagian
Tampilkan dalam SATU blok kode, lalu jelaskan dalam 5 poin apa fungsi RLS di sini.
````

## Setelah kode keluar
Salin seluruh isi schema.sql ini. Jalankan di Supabase: **SQL Editor → New query → tempel → Run** (lihat Panduan Guru bagian Supabase). Simpan juga sebagai file `schema.sql` untuk diupload ke GitHub.

Berikutnya: [Prompt C — aplikasi](3-prompt-C-aplikasi.md)
