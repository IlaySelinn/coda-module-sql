# Description Fonctionnelle - Carte des bars à Dijon

##  Objectif du système
Gérer la carte interactive des bars dijonnais avec leurs bières disponibles et prix pratiqués.

##  Entités principales

- **Quartier** : Division géographique de Dijon (ex: Centre-ville, Toison d'Or)
- **Bar** : Établissement servant des bières (nom, adresse précise)
- **Bière** : Produit vendu (nom, type: IPA/Pils/Blonde, degrés alcool)
- **Prix** : Tarif d'une bière dans un bar spécifique

##  Relations & Règles métier

- **1 quartier → N bars** : Un bar appartient à un seul quartier
- **1 bar → N prix** : Un bar propose plusieurs bières
- **1 bière → N prix** : Une bière vendue dans plusieurs bars
- **Prix unique par (bar, bière)** : Évite doublons
- **Contraintes** : Prix > 0€, degrés entre 2.5% et 12%

## Fonctionnalités attendues
- Recherche bars par quartier
- Comparaison prix bières par quartier
- Top bars par panier moyen
- Statistiques bières populaires 

