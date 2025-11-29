 Projet complet — Carte des bars à Dijon

# Description fonctionnelle — Projet « Carte des bars à Dijon »

## 1. Introduction
Ce projet permet de gérer les bars, bières, prix et quartiers à Dijon pour analyser les ventes, prix et disponibilités.

## 2. Entités principales
### Bar
- id_bar (clé primaire)
- nom
- adresse
- quartier_id (FK vers Quartier)
- Règles : Un bar est dans un seul quartier, mais vend plusieurs bières.

### Bière
- id_biere (clé primaire)
- nom
- type (IPA, Blonde, Blanche, etc.)
- degre
- Règles : Chaque bière peut être vendue dans plusieurs bars.

### Quartier
- id_quartier (clé primaire)
- nom
- Règles : Chaque quartier contient plusieurs bars.

### Prix
- id_prix (clé primaire)
- bar_id (FK vers Bar)
- biere_id (FK vers Bière)
- prix
- Règles : Chaque prix lie une bière et un bar spécifique.

## 3. Relations fonctionnelles
- Bar → Quartier : 1:N
- Bar ↔ Bière : N:M via Prix
- Prix : lie bar et bière avec prix spécifique

## 4. Exemples d’utilisation
- Afficher les bières par quartier
- Trouver l’IPA la moins chère
- Calculer le prix moyen par quartier