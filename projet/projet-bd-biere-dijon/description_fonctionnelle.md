# MCD — Carte des bars à Dijon

## 1. Entités et attributs

### Quartier
- id_quartier (PK)
- nom

### Bar
- id_bar (PK)
- nom
- adresse
- quartier_id (FK vers Quartier)

### Bière
- id_biere (PK)
- nom
- type
- degre

### Prix
- id_prix (PK)
- bar_id (FK vers Bar)
- biere_id (FK vers Bière)
- prix

## 2. Relations

- **Quartier → Bar** : 1 quartier contient plusieurs bars (1:N)
- **Bar → Prix → Bière** : un bar propose plusieurs bières et une bière peut être vendue dans plusieurs bars (N:M) via Prix

## 3. Diagramme Mermaid

```mermaid
erDiagram
    QUARTIER ||--o{ BAR : contient
    BAR ||--o{ PRIX : propose
    BIERE ||--o{ PRIX : concerne
```

