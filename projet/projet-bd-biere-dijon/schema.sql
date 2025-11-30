-- Schema PostgreSQL - 
--Carte des bars à Dijon-

DROP TABLE IF EXISTS prix, bar, biere, quartier CASCADE;

CREATE TABLE quartier (
    id_quartier SERIAL PRIMARY KEY,
    nom VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE bar (
    id_bar SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    adresse VARCHAR(200) NOT NULL,
    id_quartier INT REFERENCES quartier(id_quartier)
);

CREATE TABLE biere (
    id_biere SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    type VARCHAR(30) NOT NULL CHECK (type IN ('IPA', 'Pilsner', 'Blonde', 'Stout', 'Ambrée', 'Blanche')),
    degre DECIMAL(3,1) CHECK (degre BETWEEN 2.5 AND 12.0)
);

CREATE TABLE prix (
    id_bar INT REFERENCES bar(id_bar),
    id_biere INT REFERENCES biere(id_biere),
    prix DECIMAL(5,2) NOT NULL CHECK (prix > 0),
    PRIMARY KEY (id_bar, id_biere)
);

/*
     SCHEMA POSTGRESQL - Carte des bars à Dijon 
 
 * - SERIAL PK auto-increment
 * - FK contraintes CASCADE
 * - CHECK: prix>0, degre 2.5-12, type ENUM
 * - NOT NULL + UNIQUE quartier.nom
 * - Exécutable sans erreur: DROP + CREATE
 */
