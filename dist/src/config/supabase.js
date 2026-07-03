// ============================================================
// Configuração do Supabase
// ------------------------------------------------------------
// 1. Crie um projeto em https://supabase.com
// 2. Copie a URL e a chave "anon public" em Settings > API
// 3. Preencha abaixo e faça o commit normalmente.
//
// A chave anon é PÚBLICA por design — a segurança vem das
// políticas RLS criadas no database/schema.sql, nunca da chave.
// NUNCA coloque aqui a service_role key.
//
// Enquanto os campos estiverem vazios, a aplicação roda em
// MODO DEMO (somente leitura, dados do arquivo data/hosts.json).
// ============================================================

export const SUPABASE_URL = 'https://wmetxgvvbpkuogzcghxr.supabase.co';       // ex: 'https://xxxxx.supabase.co'
export const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndtZXR4Z3Z2YnBrdW9nemNnaHhyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODI5MzI5OTQsImV4cCI6MjA5ODUwODk5NH0.AysBHRtwXXW9m4dkxPVPLL83LQ_T_aHQjWA7pzgdFEU';  // ex: 'eyJhbGciOi...'

export const isConfigured = () =>
  Boolean(SUPABASE_URL && SUPABASE_ANON_KEY);
