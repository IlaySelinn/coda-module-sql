-- Création des tables

CREATE TABLE quartier (
    id_quartier SERIAL PRIMARY KEY,
    nom VARCHAR(50) NOT NULL
);

CREATE TABLE bar (
    id_bar SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    adresse VARCHAR(150),
    quartier_id INT NOT NULL,
    FOREIGN KEY (quartier_id) REFERENCES quartier(id_quartier)
);

CREATE TABLE biere (
    id_biere SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    type VARCHAR(50),
    degre NUMERIC(3,1)
);

CREATE TABLE prix (
    id_prix SERIAL PRIMARY KEY,
    bar_id INT NOT NULL,
    biere_id INT NOT NULL,
    prix NUMERIC(5,2) NOT NULL,
    FOREIGN KEY (bar_id) REFERENCES bar(id_bar),
    FOREIGN KEY (biere_id) REFERENCES biere(id_biere)
);
