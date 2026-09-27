-- =====================================================================
-- PinjamLab — skema database (Supabase / PostgreSQL)
-- Jalankan sekali di: Supabase Dashboard > SQL Editor > New query > Run
-- =====================================================================

-- 1. Tabel utama: catatan peminjaman alat lab
create table if not exists public.peminjaman (
  id                bigint generated always as identity primary key,
  nama_siswa        text not null check (char_length(nama_siswa) between 3 and 100),
  kelas             text not null check (char_length(kelas) between 2 and 20),
  alat              text not null check (char_length(alat) between 2 and 100),
  jumlah            int  not null default 1 check (jumlah between 1 and 50),
  status            text not null default 'dipinjam'
                    check (status in ('dipinjam', 'dikembalikan')),
  dipinjam_pada     timestamptz not null default now(),
  dikembalikan_pada timestamptz,
  dicatat_oleh      uuid not null default auth.uid() references auth.users(id)
);

-- 2. KEAMANAN: aktifkan Row Level Security (RLS).
--    Tanpa RLS, siapa pun yang tahu "anon key" (yang memang terlihat
--    di kode frontend) bisa membaca dan mengubah semua data.
alter table public.peminjaman enable row level security;

-- 3. Aturan akses: hanya guru yang sudah login (authenticated) yang boleh
--    melihat, menambah, dan mengubah data. Pengunjung anonim tidak bisa apa-apa.
drop policy if exists "guru boleh lihat"   on public.peminjaman;
drop policy if exists "guru boleh tambah"  on public.peminjaman;
drop policy if exists "guru boleh ubah"    on public.peminjaman;

create policy "guru boleh lihat" on public.peminjaman
  for select to authenticated using (true);

create policy "guru boleh tambah" on public.peminjaman
  for insert to authenticated with check (dicatat_oleh = auth.uid());

create policy "guru boleh ubah" on public.peminjaman
  for update to authenticated using (true) with check (true);

-- Sengaja TIDAK ada policy DELETE: data peminjaman tidak bisa dihapus,
-- hanya ditandai "dikembalikan". Ini menjaga jejak (audit trail).

-- =====================================================================
-- LANGKAH MANUAL SETELAH MENJALANKAN SQL INI:
-- a) Authentication > Sign In / Providers > matikan "Allow new users to sign up"
--    (supaya orang luar tidak bisa mendaftar sendiri).
-- b) Authentication > Users > Add user > isi email & password guru.
-- =====================================================================
