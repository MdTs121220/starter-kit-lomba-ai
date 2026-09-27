# PRD — Product Requirements Document

> Isi dokumen ini **sebelum** menulis kode apa pun. Anggap PRD ini "surat pesanan" buat AI:
> makin jelas PRD-nya, makin pas hasil dari AI. Teks panduan (yang diawali `>`) boleh dihapus setelah diisi.
> Contoh lengkap: `contoh/PRD-contoh-pinjamlab.md`

## 1. Identitas
- **Nama aplikasi:**
- **Nama tim & anggota (maks. 3):**
  - Ketua:
  - Anggota:
- **Platform:** Web / Android / Desktop
- **Link repository:**
- **Link hosting / APK:**

## 2. Masalah
> Masalah NYATA apa di SMK Negeri 1 Sorong yang mau kalian selesaikan? Siapa yang mengalaminya?
> Tulis hasil ngobrol singkat dengan calon pengguna. Ini dasar nilai **Inovasi & Manfaat (20%)**.

- **Masalah saat ini:**
- **Siapa yang terdampak:**
- **Cara yang dipakai sekarang (manual/kertas/WA):**
- **Bukti/hasil wawancara:** (nama narasumber, jabatan, poin penting)

## 3. Solusi & Tujuan
- **Solusi singkat (1–2 kalimat):**
- **Tujuan terukur:** (contoh: "rekap absensi yang biasanya 2 jam jadi 1 menit")

## 4. Pengguna & Hak Akses
| Peran | Siapa | Boleh melakukan | Tidak boleh |
|---|---|---|---|
| Admin | | | |
| Guru | | | |
| Siswa | | | |

## 5. Fitur
> Bagi jadi WAJIB (harus jalan saat lomba) dan TAMBAHAN (kalau sempat).
> 4 fitur wajib yang mulus jauh lebih baik daripada 10 fitur setengah jadi.

### Wajib (MVP)
| No | Fitur | Peran | Kriteria berhasil |
|---|---|---|---|
| F1 | Login | Semua | Salah password ditolak, password tersimpan ter-hash |
| F2 | | | |
| F3 | | | |
| F4 | | | |

### Tambahan
- 

## 6. Alur Pengguna
> Tulis langkah demi langkah dari sisi pengguna.

1. Guru membuka aplikasi → login →
2. 
3. 

## 7. Data (Rancangan Database)
| Tabel | Kolom penting | Keterangan |
|---|---|---|
| users | id, nama, email, password_hash, role | |
| | | |

## 8. Halaman / Tampilan
| Halaman | Isi utama | Untuk peran |
|---|---|---|
| Login | | Semua |
| Dashboard | | |

**Gaya visual:** (warna utama, kesan: formal/ceria/modern, referensi aplikasi yang disukai)

## 9. Batasan Teknis
- **Stack:** (contoh: HTML+JS+Supabase / PHP+MySQL / Laravel / Flutter)
- **Hosting:** (contoh: GitHub Pages, InfinityFree, Vercel)
- **Harus bisa dipakai di HP?** Ya / Tidak
- **Harus bisa offline?** Ya / Tidak

## 10. Di Luar Cakupan
> Apa yang SENGAJA tidak dibuat, supaya AI dan tim tidak melebar ke mana-mana.

- 

## 11. Rencana Kerja
| Tanggal | Target | PJ |
|---|---|---|
| | PRD selesai & disetujui tim | |
| | Fitur F1–F2 jalan | |
| | Fitur F3–F4 jalan | |
| | Uji & checklist keamanan | |
| | Deploy, manual, video, poster | |
