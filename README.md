# AXOSU.AFRICA — site vitrine

Site vitrine institutionnel d'AXOSU SARL (Cotonou, Bénin). Statique — HTML,
CSS et JavaScript vanilla, aucune dépendance, aucun build. Ouvrable
directement dans n'importe quel navigateur (`code/index.html`).

**En ligne** : [axosu.africa](https://axosu.africa) (production, branche
`master`) · aperçu de travail : `dev--axosu-africa.netlify.app` (branche
`dev`, alimentée en continu, jamais fusionnée en prod sans validation).

## Structure du dépôt
```
code/            le site (pages HTML + assets)
documentation/   direction artistique et historique du site (DESIGN.md)
```

## Pages (`code/`)
- `index.html` — Accueil
- `a-propos.html` — À propos
- `nos-services.html` — Nos services (EduTech, Coaching Professionnel, Business Corporate)
- `rejoindre.html` — Rejoindre AXOSU
- `contact.html` — Contact
- `404.html` — Page d'erreur (servie automatiquement par Netlify pour toute URL inconnue)

## Assets (`code/assets/`)
- `css/style.css` — feuille de style unique
- `js/main.js` — comportements JS (menu mobile, petites animations),
  le site fonctionne sans JS
- `img/` — logo, favicons (32/16/apple-touch-icon) et photos (portrait CEO,
  photos des 3 axes stratégiques, licence Unsplash pour les photos
  génériques restantes)

## Documentation (`documentation/`)
- `DESIGN.md` — direction artistique, palette, typographie, journal des
  ajustements visuels (suivi par git, publié)
- `HISTORIQUE-VARIANTES.md` — registre des variantes proposées à un round
  de décision (CA AXOSU...), avec branches/tags associés (suivi par git)
- `contenu-textes.md` — référence texte de tout le contenu du site
  (**local uniquement**, non suivi par git — voir `.gitignore`)

Méthodologie Git/GitHub (branches, archivage, variantes) documentée dans
`../../../Apprentissage/METHODOLOGIE-GITHUB.md` (doc transversal, hors de ce
dépôt public).

## Workflow Git
- `master` = production, déployée automatiquement sur `axosu.africa`.
- `dev` = branche de travail permanente (jamais recréée) — chaque lot de
  mises à jour y est poussé, prévisualisé sur son propre lien Netlify, puis
  fusionné dans `master` une fois validé.
- Aucune branche n'est supprimée sur GitHub sans demande explicite —
  archivage par renommage/tag plutôt que suppression par défaut.

## Statut
Site en ligne (`axosu.africa`) et en évolution continue sur la branche
`dev`. `PLAN_PROJET_SITE.md` (local, non suivi par git) tient le détail de
chaque itération.
