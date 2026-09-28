# Prompt B — Bikin Fitur F1 + F2 (Langkah 2)

Tempel di percakapan **yang sama** dengan Prompt A, setelah AI selesai membuat rencana.

````text
Rencana disetujui. Sekarang kerjakan HANYA fitur F1 (kelola data siswa) dan
F2 (absen harian H/I/S/A per siswa, pilih kelas dan tanggal).
Wajib: satu file index.html, responsif di HP, semua teks dari pengguna di-escape
sebelum masuk HTML, konfirmasi sebelum menghapus, pesan berhasil/gagal, komentar
Bahasa Indonesia. Tampilkan kode lengkap dalam SATU blok, lalu jelaskan cara
kerjanya dalam 5 poin dan cara mengujinya.
````

## Setelah kode keluar
1. Klik **Copy** di blok kode jawaban AI.
2. Buka Notepad++ / VS Code → file baru → tempel → **Save As** `index.html` (encoding UTF-8).
3. Klik dua kali `index.html` sampai terbuka di browser.
4. Coba: tambah kelas `XI TJKT 1`, tempel 4–5 nama siswa, absen H/I/S/A.
5. Tekan **F5**. Data tetap ada karena tersimpan di localStorage.
6. Tekan `Ctrl + F` di kode, cari `localStorage` dan fungsi escape (misalnya `escapeHTML` atau `esc`). Tunjukkan ke siswa.

**Kalau AI membagi jadi beberapa file**, balas: `Gabungkan jadi SATU file index.html saja.`
**Kalau muncul error**, tekan F12 → tab Console → salin pesan merah → pakai [prompt #3](../docs/BANK-PROMPT.md).

Berikutnya: [Prompt C — tambah rekap](3-prompt-C-rekap.md)
