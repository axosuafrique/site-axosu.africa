-- AXOSU.AFRICA — schéma Supabase (V4 backend unifié)
-- À exécuter tel quel dans l'éditeur SQL Supabase (Database > SQL Editor)
-- une fois le projet créé. Voir PLAN_PROJET_SITE.md, section "V4 — Backend unifié"
-- (local, non versionné) pour le contexte complet des décisions.

-- ============================================================
-- Table : admin_users
-- Liste blanche des comptes admin, référencée par les policies RLS
-- des autres tables. Un compte doit d'abord exister dans
-- Supabase Auth (email/mot de passe créé depuis le dashboard),
-- puis être ajouté ici avec le même id.
-- ============================================================
create table admin_users (
  id uuid primary key references auth.users(id),
  email text not null,
  created_at timestamptz not null default now()
);

alter table admin_users enable row level security;

create policy "admin lit sa propre ligne"
  on admin_users for select
  using (auth.uid() = id);

-- ============================================================
-- Table : page_views
-- Un enregistrement par visite de page (analytics).
-- ============================================================
create table page_views (
  id uuid primary key default gen_random_uuid(),
  path text not null,
  referrer text,
  utm_source text,
  utm_medium text,
  utm_campaign text,
  user_agent text,
  visitor_id text,
  created_at timestamptz not null default now()
);

alter table page_views enable row level security;

create policy "anon peut logger une vue"
  on page_views for insert
  to anon
  with check (true);

create policy "admin lit tout"
  on page_views for select
  using (exists (select 1 from admin_users where id = auth.uid()));

-- ============================================================
-- Table : messages
-- Unifie les 4 formulaires du site (contact, intérêt événement,
-- liste d'attente app, démo école) — décision du 12/08/2026 (soir).
-- `details` porte les champs propres à chaque `type`, pour ne pas
-- ajouter de colonne à chaque nouveau formulaire futur.
-- ============================================================
create table messages (
  id uuid primary key default gen_random_uuid(),
  type text not null check (type in ('contact', 'event-interest', 'app-waitlist', 'demo-school')),
  name text not null,
  email text not null,
  phone text,
  details jsonb not null default '{}'::jsonb,
  read boolean not null default false,
  created_at timestamptz not null default now()
);

alter table messages enable row level security;

create policy "anon peut envoyer un message"
  on messages for insert
  to anon
  with check (true);

create policy "admin lit et modifie tout"
  on messages for select
  using (exists (select 1 from admin_users where id = auth.uid()));

create policy "admin met a jour (ex. marquer lu)"
  on messages for update
  using (exists (select 1 from admin_users where id = auth.uid()));

-- ============================================================
-- Table : articles
-- Le blog dynamique (remplace le blog statique du Lot 4 V3 —
-- voir PLAN_PROJET_SITE.md pour la migration du contenu existant).
-- ============================================================
create table articles (
  id uuid primary key default gen_random_uuid(),
  slug text not null unique,
  title text not null,
  excerpt text,
  content text not null,
  cover_image_url text,
  status text not null default 'draft' check (status in ('draft', 'published')),
  published_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

alter table articles enable row level security;

create policy "anon lit les articles publies"
  on articles for select
  to anon
  using (status = 'published');

create policy "admin lit et ecrit tout"
  on articles for all
  using (exists (select 1 from admin_users where id = auth.uid()))
  with check (exists (select 1 from admin_users where id = auth.uid()));
