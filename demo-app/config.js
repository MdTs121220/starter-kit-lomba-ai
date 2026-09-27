// =====================================================================
// Konfigurasi Supabase
// Ambil dari: Supabase Dashboard > Project Settings > API
//
// "anon/publishable key" MEMANG aman dipasang di frontend,
// ASALKAN Row Level Security (RLS) aktif (lihat schema.sql).
// JANGAN PERNAH menaruh "service_role / secret key" di sini!
//
// Kalau dua nilai di bawah dibiarkan kosong, aplikasi otomatis
// berjalan dalam MODE DEMO (data disimpan di browser saja).
// =====================================================================
window.PINJAMLAB_CONFIG = {
  SUPABASE_URL: "https://ptaxlpndrpjorgtehzys.supabase.co",
  SUPABASE_ANON_KEY: "sb_publishable_gk0VGri6DmkYvVQGmMJuvw_nZnvlXE4"  // publishable key: aman di frontend karena RLS aktif
};
