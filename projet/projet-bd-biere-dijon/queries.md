# Requêtes Analytiques Obligatoires

## 1. Prix moyen bière par quartier
```sql
SELECT q.nom, ROUND(AVG(p.prix),2) as prix_moyen
FROM quartier q JOIN bar b ON q.id_quartier=b.id_quartier
JOIN prix p ON b.id_bar=p.id_bar GROUP BY q.id_quartier;
```

## 2. Bars vendant IPA la moins chère
```sql
SELECT b.nom, b.adresse, bi.nom, MIN(p.prix) as prix_min_ipa
FROM bar b JOIN prix p ON b.id_bar=p.id_bar
JOIN biere bi ON p.id_biere=bi.id_biere
WHERE bi.type='IPA' GROUP BY b.id_bar, bi.id_biere;
```

## 3. Bières vendues dans ≥5 bars
```sql
SELECT bi.nom, COUNT(DISTINCT p.id_bar) as nb_bars
FROM biere bi JOIN prix p ON bi.id_biere=p.id_biere
GROUP BY bi.id_biere HAVING COUNT(DISTINCT p.id_bar)>=5;
```

## 4. Bars sans bière <6€
```sql
SELECT b.nom FROM bar b
WHERE NOT EXISTS (
    SELECT 1 FROM prix p
    WHERE p.prix<6 AND p.id_bar=b.id_bar
);
```

## 5. Top bar panier moyen maximum
```sql
SELECT b.nom, ROUND(AVG(p.prix),2) as panier_moyen
FROM bar b JOIN prix p ON b.id_bar=p.id_bar
GROUP BY b.id_bar ORDER BY panier_moyen DESC LIMIT 1;
```

