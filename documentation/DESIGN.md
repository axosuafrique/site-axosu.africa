# Direction artistique — site AXOSU.AFRICA

> Référence rapide pour rester cohérent si le site évolue. Détail complet
> des règles de marque : `../../charte-graphique-AXOSU.md` et `../../brand-kit-AXOSU.md`.

## Signature du site (mise à jour 04/08/2026)
Ruben a fourni une nouvelle version du logo, pensée pour fond blanc → la
pastille marine et le "coin coupé" (jugés pas assez pro par Ruben) ont été
retirés. Direction actuelle, plus sobre :
- **Logo affiché directement**, en grand, sans habillage — sur fond marine
  (footer) il est posé sur un petit cadre blanc arrondi pour rester lisible,
  sans jamais modifier le fichier lui-même.
- **Coins arrondis classiques** (`border-radius: 8px`) sur boutons/cartes.
- **Trait d'accent dégradé orange→rouge** sous les titres de section — écho
  discret au ruban-flamme du logo, dessiné à part (jamais extrait du
  fichier logo).
- **Famille de boutons "Nous contacter"** (nav, hero, bandeaux CTA) : fond
  dégradé orange→rouge, texte blanc, harmonisée sur tout le site — c'est
  désormais LE signal visuel "point de contact" reconnaissable partout.
- **Icônes des 3 pôles** : trait en dégradé orange→rouge (`linearGradient`
  SVG), plus le bleu marine plein utilisé au premier jet.

## Palette (héritée de la charte, ne pas dévier)
| Rôle | Hex |
|---|---|
| Marine (titres, boutons primaires, fond pastille) | `#0E3A50` |
| Marine foncé (hover) | `#082A3B` |
| Orange clair | `#FF9327` |
| Orange vif (accents, CTA secondaire) | `#FF5913` |
| Rouge (pointes d'accent uniquement) | `#F22612` |
| Encre texte courant | `#1A1A1A` |
| Gris support (légendes) | `#6B7280` |
| Fond page | `#FAFAFA` |
| Blanc cartes | `#FFFFFF` |

Règle de dosage : ~60% marine/neutre, 30% blanc, 10% orange-rouge en accent
(jamais en aplat large de texte).

## Typographie
- Titres : **Montserrat** 700/800 (Google Fonts).
- Texte courant : **Inter** 400/500/600 (Google Fonts).
- Petites capitales "eyebrow" (labels au-dessus des titres) : Inter 600,
  letter-spacing large, taille réduite.

## Hero — la thèse de la marque
Le titre du hero reprend la tagline officielle "Éduquer • Innover •
Transformer" en grand, avec **un mot = une teinte de la palette** (marine /
orange / rouge) — la carte de couleur de la marque devient lisible dès la
première ligne, avant même la section des 3 pôles.

## Mise en page
- Colonne de contenu resserrée (max ~1180px), marges généreuses — référence
  "Star Body Gym" citée dans la charte (sensation premium, pas de page
  saturée).
- 3 pôles = 3 cartes de poids égal (pas de numérotation 01/02/03 : ce ne sont
  pas des étapes séquentielles mais 3 piliers parallèles).
- Icônes linéaires (trait constant 2px, coins légèrement arrondis) dessinées
  pour chaque pôle plutôt que des pictos stock.

## Images (ajouté 05/08/2026)
Pas de photothèque AXOSU existante → photos Unsplash (licence gratuite,
usage commercial autorisé), choisies une par une après inspection visuelle
(pas de sélection à l'aveugle sur le seul texte alternatif) :
- **Hero (Accueil)** : `hero-focus.jpg`, professionnel concentré sur un
  ordinateur portable — pose la thèse "technologie + rigueur" dès l'entrée.
- **Nos pôles** : une photo par pôle, mise en page alternée texte/photo
  (`.pole-section`, classe `reverse` pour inverser le sens) —
  `pole-edutech.jpg`, `pole-commerce.jpg`, `pole-formation.jpg`.
- **À propos** : bandeau de clôture avec `about-cotonou.jpg` en fond +
  voile marine (conforme à la charte §5.3 "jamais de texte sur photo sans
  fond semi-transparent marine pour le contraste").
Traitement : coins arrondis 16-20px (`.hero__media`, `.pole-section__media`),
`object-fit: cover`. Fichiers dans `assets/img/`.

## Bandeaux "cta-band" — variantes (mis à jour 05/08/2026)
Trois traitements possibles pour la section de clôture avant le footer,
selon la page :
- **`.cta-band` (marine plein)** : par défaut — Rejoindre AXOSU, sections
  intermédiaires.
- **`.cta-band--photo`** : photo + voile marine 82% (À propos), texte en
  **blanc pur** (pas 78%, la photo réduit trop le contraste sinon).
- **`.cta-band--light`** : fond **blanc**, textes réadaptés (h2 marine,
  paragraphe gris support) — Accueil et Nos pôles, à la demande de Ruben
  pour varier le rythme visuel juste avant le footer marine.

## Mouvement (discret, respecte `prefers-reduced-motion`)
- Chargement du hero : léger fondu/montée du titre (contenu toujours en haut
  de page, donc fiable, pas de dépendance au scroll).
- Survol carte/bouton : léger lift + accent orange.
- Aucun effet de particules, aucun blob animé — juste une lueur ambrée très
  discrète derrière la pastille logo du hero, écho au halo réel du fichier
  logo.
- ⚠️ Note d'autocritique (04/08/2026) : une v1 avait un fondu-au-scroll sur
  les cartes des 3 pôles (IntersectionObserver). Repéré via capture Chrome
  plein-page : les cartes restaient invisibles tant qu'aucun scroll réel ne
  se produisait (capture plein-page sans scroll = jamais "intersecting").
  Trop fragile pour du contenu central → retiré, cartes toujours visibles.
- ⚠️ Note d'autocritique (04/08/2026) : le header avait un `backdrop-filter`
  (flou). Repéré via test réel du menu mobile : `backdrop-filter` sur un
  ancêtre transforme cet ancêtre en conteneur de positionnement pour ses
  descendants `position: fixed` (règle CSS peu connue) — le menu mobile
  fixed hérétait donc de la hauteur du header (~60px) au lieu de l'écran
  entier, et se retrouvait quasi invisible/coupé. Retiré, header en fond
  plein — plus robuste.
- ⚠️ Note d'autocritique (05/08/2026) : bug de contraste texte sur les
  bandeaux marine (`.cta-band`), signalé par Ruben comme "illisible" sur le
  bandeau photo de À propos. Cause réelle : la règle CSS
  `.section--marine .cta-band p` (avec un espace) cherchait un `.cta-band`
  **descendant** d'un `.section--marine`, alors que les deux classes sont
  posées sur le **même** `<section>` dans le HTML — la règle ne matchait
  donc jamais, et c'est la règle générique grise (`--support`) qui
  s'appliquait partout, y compris sur fond marine. Corrigé en sélecteur
  composé sans espace (`.section--marine.cta-band p`) — corrige le problème
  sur tous les bandeaux marine du site, pas seulement celui repéré.

## Journal des ajustements
*(tenu à jour à chaque correction visuelle, à la demande de Ruben du 05/08/2026)*

- **05/08/2026** — Footer : ligne de marque passée sur 2 lignes ("AXOSU
  SARL" puis la tagline, au lieu d'une seule ligne avec tiret).
- **05/08/2026** — Bug de contraste des bandeaux marine corrigé (voir note
  d'autocritique ci-dessus) + bandeau photo (À propos) passé en texte blanc
  pur + nouvelle variante `.cta-band--light` (fond blanc) appliquée aux
  bandeaux de clôture d'Accueil et Nos pôles.
- **05/08/2026** — Refonte de contenu V2 (branche `v2`) : photo hero
  remplacée par le portrait de Mr Patrick D. ATINDEHOU (CEO). `.hero__media`
  passé de `aspect-ratio: 4/5` à `1/1` (photo source quasi carrée,
  1321×1191px, recadrée légèrement pour retirer l'excès de fond sombre
  au-dessus de la tête) — objectif : que tout le hero (photo + titre + texte
  + boutons) tienne dans la hauteur d'écran sur desktop sans scroll.
  `.hero__grid` passé de `align-items: center` à `align-items: start` (règle
  ≥760px) : évite qu'une colonne plus haute que l'autre ne pousse le texte
  vers le bas et crée un vide au-dessus du titre — corrige ce problème quelle
  que soit la hauteur relative des deux colonnes, pas seulement pour cette
  photo. Ajout d'un overlay légende (`.hero__media-caption`, dégradé blanc
  opaque au ras du bas → transparent à 30% de la hauteur) pour afficher le
  nom/la fonction du CEO directement sur la photo.
  Kicker du hero ("AXOSU SARL — Cotonou, Bénin") retiré sans remplacement,
  sur demande explicite de Ruben (un kicker de 3 mots au-dessus d'un titre de
  3 mots faisait doublon, jugé faible en copywriting).
  Bloc "Trois pôles" (grille `.poles-grid`/`.pole-card`, pensée pour un texte
  court) remplacé par une **liste verticale `.expertise-list`/
  `.expertise-block`** (icône + titre + paragraphe pleine largeur, bordure
  gauche orange façon `.value-card`) — nécessaire car les 3 nouveaux textes
  (EduTech / Coaching Professionnel / Business Corporate) sont des
  paragraphes complets, illisibles compressés dans une grille 3 colonnes de
  petites cartes. `.poles-grid`/`.pole-card` restent définies dans le CSS
  (plus utilisées sur `index.html`) au cas où elles resserviraient ailleurs.
  Page "Nos pôles" renommée **"Nos services"** (`nos-poles.html` →
  `nos-services.html`), contenu détaillé adapté aux 3 nouveaux axes avec 3
  nouvelles photos fournies par Ruben (`edutech.jpg`, `coaching.jpg`,
  `business-corporate.jpg`, remplacent les anciennes `pole-*.jpg`).
