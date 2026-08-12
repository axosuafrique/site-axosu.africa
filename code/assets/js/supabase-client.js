/* AXOSU.AFRICA — client Supabase partagé (V4 backend).
   PAS ENCORE ACTIVÉ : en attente de l'URL et de la clé publique du projet
   Supabase (création du projet = action de Ruben, voir PLAN_PROJET_SITE.md,
   section "V4 — Backend unifié").

   Une fois le projet créé :
   1. Remplacer SUPABASE_URL et SUPABASE_ANON_KEY ci-dessous par les valeurs
      réelles (Project Settings > API sur supabase.com).
   2. Ajouter avant ce fichier, sur chaque page qui en a besoin :
      <script src="https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2/dist/umd/supabase.min.js"></script>
   3. La clé publique (anon key) est faite pour être visible côté client —
      la vraie protection est la Row Level Security (RLS) du schéma SQL
      (supabase/schema.sql), pas le secret de cette clé. */

const SUPABASE_URL = "https://TODO.supabase.co";
const SUPABASE_ANON_KEY = "TODO";

window.axosuSupabase =
  typeof supabase !== "undefined" && SUPABASE_URL.indexOf("TODO") === -1
    ? supabase.createClient(SUPABASE_URL, SUPABASE_ANON_KEY)
    : null;
