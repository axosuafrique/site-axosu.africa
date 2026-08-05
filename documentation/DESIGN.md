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
- **Icônes en dégradé orange→rouge** : gardées pour les icônes ponctuelles
  restantes du site (ex. page Nos services, en tête de chaque section
  détaillée) — mais depuis la refonte V2 (05/08/2026), les blocs "3 axes"
  de l'Accueil et de Nos services utilisent de **vraies photos**, pas des
  icônes, comme traitement principal (voir section Images).

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
- **3 axes stratégiques (EduTech / Coaching Professionnel / Business
  Corporate)** : depuis la refonte V2, présentés en **blocs alternés
  photo/texte** (`.pole-section`, classe `reverse` pour inverser le sens),
  le même pattern étant réutilisé à l'identique sur l'Accueil (aperçu) et
  sur Nos services (détail) — pas de numérotation 01/02/03 : ce ne sont pas
  des étapes séquentielles mais 3 piliers parallèles.
- Icônes linéaires (trait constant 2px, coins légèrement arrondis) dessinées
  sur mesure plutôt que des pictos stock, utilisées en tête de section sur
  Nos services.
- **Texte justifié dans les blocs/cartes** (règle permanente depuis
  05/08/2026) : tout paragraphe à l'intérieur d'un composant "carte" —
  `.pole-section p`, `.value-card p`, `.pole-card p` — est en
  `text-align: justify`, pour une harmonie visuelle entre les blocs. Ne
  s'applique pas au texte courant de page (hero, intros de section).

## Images (mis à jour 05/08/2026 — refonte V2)
- **Hero (Accueil)** : portrait de **Mr Patrick D. ATINDEHOU** (Manager &
  CEO d'AXOSU), `patrick-atindehou-ceo.jpg` — recadré en carré (1191×1191,
  depuis la source 1321×1191) **sans aucun rognage en haut** (règle
  permanente sur toute photo de personne : on peut rogner à gauche, à
  droite et en bas, jamais en haut — sinon effet visuel de "tête coupée").
  `.hero__media` en `aspect-ratio: 1/1` (réduit par rapport au 4/5 initial,
  pour que tout le hero tienne dans la hauteur d'écran desktop sans
  scroll), `.hero__grid` en `align-items: start` (évite un vide au-dessus
  du titre si une colonne est plus haute que l'autre). Une **légende en
  overlay "verre dépoli" (glassmorphism)** — `.hero__media-caption`, fond
  semi-transparent sombre + `backdrop-filter: blur(16px) saturate(160%)`,
  bordure claire fine, texte blanc — affiche "Mr Patrick D. ATINDEHOU /
  Manager & CEO AXÔSU" directement sur la photo.
- **3 axes stratégiques (Accueil + Nos services)** : une photo par axe,
  fournies par Ruben, mise en page alternée texte/photo (`.pole-section`,
  classe `reverse` pour inverser le sens) — `edutech.jpg`, `coaching.jpg`,
  `business-corporate.jpg`. Même trio de photos réutilisé à l'identique
  sur l'Accueil (aperçu) et sur Nos services (détail), pour la cohérence
  visuelle entre les deux pages.
- **À propos** : bandeau de clôture avec `about-cotonou.jpg` en fond +
  voile marine (conforme à la charte §5.3 "jamais de texte sur photo sans
  fond semi-transparent marine pour le contraste") — inchangé depuis la V1.
  Depuis le 05/08/2026, la section "Notre positionnement" est elle aussi un
  `.pole-section`, avec `partenariat-strategique.jpg` (poignée de main
  professionnelle, licence Unsplash gratuite/usage commercial, même source
  que les autres photos génériques du site) — Ruben a explicitement demandé
  de ne pas réutiliser une 2e fois la photo de Mr Patrick à cet endroit,
  pour ne pas personnaliser à l'excès une section qui parle de posture
  d'entreprise plutôt que d'une personne. La section "Notre signature"
  (Excellence/Innovation/Impact) a aussi reçu 3 icônes SVG dédiées (étoile,
  ampoule, flèche ascendante), même style que les icônes pôles (trait 2px,
  dégradé orange→rouge) — nouvelle classe `.value-card__icon`.
- Anciennes photos `hero-focus.jpg`/`hero-focus-v2.jpg` et
  `pole-edutech.jpg`/`pole-commerce.jpg`/`pole-formation.jpg` : conservées
  sur le disque (non supprimées) mais **plus référencées** par aucune page
  depuis la refonte V2.
Traitement : coins arrondis 16-20px (`.hero__media`, `.pole-section__media`),
`object-fit: cover`. Fichiers dans `assets/img/`.

### Favicon (05/08/2026)
Remplace l'ancien favicon générique (le PNG du logo brut, non optimisé) sur
les **6 pages** (5 existantes + `404.html`) : `favicon-32.png` (32×32),
`favicon-16.png` (16×16, fond transparent, générés via Pillow — padding
carré + redimensionnement LANCZOS depuis `logo-axosu.png` 450×456), et
`apple-touch-icon.png` (180×180, **fond marine plein** `#0e3a50` — pas
transparent, pour un bon rendu en icône d'écran d'accueil iOS).

### Page 404 (05/08/2026)
`code/404.html`, même gabarit header/nav/footer que les autres pages.
Contenu centré (`.cta-band`), gros "404" en texte dégradé (nouvelle classe
`.error-404__code`, `background: var(--gradient-warm)` + `background-clip:
text`), titre rassurant, CTA vers Accueil et Contact. Netlify sert
automatiquement ce fichier pour toute URL inconnue sur un site statique —
aucune configuration supplémentaire. Retour d'expérience : `.accent-swoosh`
est `display:block` avec des marges non-auto (aligné à gauche par défaut,
correct partout ailleurs sur le site où le texte est aligné à gauche) — il
fallait une règle `.cta-band .accent-swoosh { margin-left/right: auto }`
pour le centrer correctement dans un contexte `.cta-band` (texte centré).

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
- ⚠️ **05/08/2026, corrections immédiates après retour de Ruben** :
  - **Recadrage photo hero (règle à retenir pour toute future photo de
    ce type)** : le premier recadrage rognait ~6,5% en haut (pour retirer
    du fond vide au-dessus de la tête) — visuellement perçu comme "la tête
    coupée", très mauvais. **Règle posée par Ruben, à appliquer sur toute
    future photo de personne** : on peut rogner à gauche, à droite et en
    bas, **jamais en haut**. Recadrage refait en gardant 100% de la hauteur
    source (`box = (left, 0, left+new_w, h)`, aucun rognage vertical),
    recentré uniquement sur les côtés pour obtenir le carré.
  - **Overlay légende** : le dégradé blanc simple ("mal géré", peu lisible
    sur cette photo à fond sombre) remplacé par une **carte "verre dépoli"
    (glassmorphism)** flottante en bas de la photo — fond semi-transparent
    sombre + `backdrop-filter: blur(16px) saturate(160%)`, bordure claire
    fine, ombre portée, texte blanc. Nettement plus lisible et plus soigné
    qu'un dégradé.
  - **Bloc "Trois axes" de l'Accueil, 2e refonte** : les icônes SVG +
    liste `.expertise-list`/`.expertise-block` remplacées par le **même
    pattern que la page Nos services** (`.pole-section`, alternance photo/
    texte, 3 vraies photos `edutech.jpg`/`coaching.jpg`/
    `business-corporate.jpg`) — cohérence visuelle entre Accueil et Nos
    services, et mise en page mieux équilibrée qu'une colonne de texte
    avec une petite icône. Nouvelle classe `.pole-section-list` pour
    l'espacement vertical entre les 3 blocs empilés (remplace l'espacement
    qu'apportaient les `<section>` séparées sur Nos services).
  - **Nouvelle habitude permanente (à appliquer systématiquement)** :
    tout texte de paragraphe à l'intérieur d'un bloc/carte (`.pole-section
    p`, `.value-card p`, `.pole-card p`) est désormais **justifié**
    (`text-align: justify`) pour une harmonie visuelle des blocs de texte
    — demande de Ruben du 05/08/2026, à reproduire sur tout nouveau bloc
    de ce type.
- **05/08/2026** — Itération 10 : passage `v2` → `dev` (renommage, aucune
  suppression sur GitHub — voir `PLAN_PROJET_SITE.md` pour la méthode
  Git complète), favicon optimisé (32/16/apple-touch-icon, remplace l'ancien
  PNG brut), page `404.html` créée, page À propos rendue "vivante" (photo
  de Mr Patrick D. ATINDEHOU sur la section positionnement, 3 icônes SVG sur
  la section signature). Nouveau fichier `HISTORIQUE-VARIANTES.md` (registre
  prêt à l'emploi pour de futurs rounds de variantes à faire trancher par le
  CA AXOSU).
