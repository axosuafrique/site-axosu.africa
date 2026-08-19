# AXOSU.AFRICA — site vitrine

Site vitrine institutionnel d'AXOSU SARL (Cotonou, Bénin). Statique — HTML,
CSS et JavaScript vanilla, aucune dépendance, aucun build. Ouvrable
directement dans n'importe quel navigateur (`code/index.html`).

**En ligne** : [axosu.africa](https://axosu.africa) (production, branche
`master`) · aperçu de travail : `dev--axosu-africa.netlify.app` (branche
`dev`, alimentée en continu, jamais fusionnée en prod sans validation).

**Version en production** : V3, mise en ligne le 19/08/2026 — 26 pages,
6 formulaires, chronologie des activités depuis 2022.

## Structure du dépôt
```
code/            le site (pages HTML + assets)
documentation/   direction artistique et historique du site (DESIGN.md)
netlify.toml     configuration de déploiement (base = code, publish = .)
```

## Pages (`code/`) — 26 au total

**Institutionnel**
- `index.html` — Accueil
- `a-propos.html` — À propos
- `nos-services.html` — Nos services (EduTech, Coaching Professionnel, Business Corporate)
- `equipe.html` — Jeune et dynamique (l'équipe)
- `nos-activites.html` — Chronologie des activités, de 2022 à décembre 2026
- `rejoindre.html` — Rejoindre AXOSU
- `contact.html` — Contact

**Activités passées (galeries)**
- `evenement-sun-beach.html` — Conférence Sun Beach (2022)
- `evenement-projet-unis.html` — Projet UNIS (2023)
- `evenement-holy-land.html` — Conférence Holy Land (2024)

**Offres et rendez-vous**
- `evenement-decembre.html` — Le Sommet des Reines, 27 décembre 2026
- `formation-3-revenus.html` — Formation « 03 formations, 3 revenus »
- `methode-mbs.html` — M3S, la Mindful Builder System
- `la-clinic.html` — La Clinic (relais vers l'outil de diagnostic)
- `app.html` — L'application AXOSU (vidéo de démonstration + liste d'attente)
- `demo-ecole.html` — Réserver une démo pour une école
- `devis.html` — Demander un devis (Business Corporate)

**Éditorial**
- `blog.html` — Le blog
- `article-guide-axosu.html` — Article de présentation du guide

**Techniques**
- `merci-contact.html`, `merci-evenement.html`, `merci-app.html`,
  `merci-demo.html`, `merci-devis.html`, `merci-formation.html` — pages de
  remerciement, une par formulaire (`noindex`, hors sitemap)
- `404.html` — page d'erreur (servie automatiquement par Netlify)

## Formulaires — 6, via Netlify Forms

| `name` du formulaire | Page | Redirection |
|---|---|---|
| `contact` | `contact.html` | `/merci-contact.html` |
| `interet-evenement` | `evenement-decembre.html` | `/merci-evenement.html` |
| `inscription-formation` | `formation-3-revenus.html` | `/merci-formation.html` |
| `liste-attente-app` | `app.html` | `/merci-app.html` |
| `demo-ecole` | `demo-ecole.html` | `/merci-demo.html` |
| `devis` | `devis.html` | `/merci-devis.html` |

**Trois points à connaître avant de toucher à un formulaire** :
1. La **détection des formulaires est désactivée par défaut** sur les projets
   Netlify récents. Sans elle, le POST renvoie **404**. Elle s'active dans le
   tableau de bord (Forms → *Enable form detection*).
2. L'analyse se fait **au moment du build**. Après activation, il faut un
   **nouveau déploiement portant un vrai changement de fichier** — un
   `commit --allow-empty` est annulé par Netlify.
3. L'attribut `action` doit être un **chemin absolu** (`/merci-x.html`). En
   relatif, l'envoi est accepté mais Netlify renvoie la page du formulaire.

## Assets (`code/assets/`)
- `css/style.css` — feuille de style unique (~30 Ko)
- `js/main.js` — comportements JS (menu mobile, petites animations),
  le site fonctionne sans JS
- `img/` — 131 fichiers, ~10 Mo : logo, favicons, portraits de l'équipe,
  photos des trois événements passés (pleine taille + vignettes `min/`),
  affiches, visuels M3S, illustrations app et La Clinic
- `video/` — la démonstration de l'application (H.264, ~900 Ko) et son poster
- `sitemap.xml` / `robots.txt` — 19 pages indexables (les pages de
  remerciement en sont exclues)

**Licences des images** : photos AXOSU (événements, équipe, affiches) fournies
par le client ; photos génériques sous licence Unsplash et Pexels (usage
commercial autorisé, sans attribution requise).

## Documentation (`documentation/`)
- `DESIGN.md` — direction artistique, palette, typographie, composants et
  journal des ajustements visuels (suivi par git, publié)
- `HISTORIQUE-VARIANTES.md` — registre des variantes proposées à un round
  de décision (CA AXOSU...), avec branches/tags associés (suivi par git)
- `contenu-textes.md` — référence texte du contenu du site
  (**local uniquement**, non suivi par git — voir `.gitignore`)

Méthodologie Git/GitHub (branches, archivage, variantes) documentée dans
`../../../Apprentissage/METHODOLOGIE-GITHUB.md` (doc transversal, hors de ce
dépôt public).

## Workflow Git
- `master` = production, déployée automatiquement sur `axosu.africa`.
- `dev` = branche de travail permanente (jamais recréée) — chaque lot de
  mises à jour y est poussé, prévisualisé sur son propre lien Netlify, puis
  fusionné dans `master` une fois validé.
- `v4-backend-supabase` = préparation du back-office unifié (schéma SQL +
  squelette client), en attente de la création du projet Supabase.
- Aucune branche n'est supprimée sur GitHub sans demande explicite —
  archivage par renommage/tag plutôt que suppression par défaut.

## Vérifier avant de fusionner en production
Le contrôle appliqué à chaque livraison, dans cet ordre :
1. Toutes les pages répondent, aucun lien ni asset cassé.
2. Aucun débordement horizontal à 390 px de large.
3. Aucune erreur dans la console.
4. Aucune note de travail visible dans le texte publié.
5. Les formulaires touchés sont testés par un **vrai envoi**, vérifié dans le
   tableau de bord Netlify. *Les envois faits par script sont classés en spam
   par Akismet : un test scripté qui ne remonte pas n'est pas la preuve que le
   formulaire est cassé.*

## Statut
**V3 en production depuis le 19/08/2026.** Le travail se poursuit sur `dev`.
`PLAN_PROJET_SITE.md` (local, non suivi par git) tient le détail historique
de chaque itération.
