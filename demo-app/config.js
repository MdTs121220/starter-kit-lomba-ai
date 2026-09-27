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
  SUPABASE_URL: "",       // contoh: "https://abcdefgh.supabase.co"
  SUPABASE_ANON_KEY: ""   // contoh: "eyJhbGciOi..." atau "sb_publishable_..."
};
