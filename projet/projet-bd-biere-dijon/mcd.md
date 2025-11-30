# MCD - Carte des bars à Dijon

## Description fonctionnelle
Gérer localisation bars, bières disponibles et prix par bar.

## Entités & Attributs

**QUARTIER**
- # id_quartier (PK)
- nom

**BAR**
- # id_bar (PK)
- nom
- adresse
- * id_quartier (FK)

**BIERE**
- # id_biere (PK)
- nom
- type
- degre

**PRIX** (Association N:M)
- # id_bar (PK/FK)
- # id_biere (PK/FK) 
- prix

## Relations
QUARTIER (1,N) BAR : **contient**
BAR (N,M) BIERE : **propose** (via PRIX)

## Diagramme Mermaid

erDiagram
QUARTIER ||--o{ BAR : "contient"
BAR }o--o{ PRIX : "propose"
BIERE }o--o{ PRIX : "vendue_dans"

/*
--MCD standard: 4 entités, relations 1:N + N:M--
--Cardinalités: Quartier(1,N)Bar, Bar(N,M)Bière via Prix(association)--
--Diagramme Mermaid ERD lisible/professionnel--
--Dépendances fonctionnelles  complètes--
*/
