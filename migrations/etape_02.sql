CREATE TABLE categorie(
    id_categorie serial PRIMARY KEY,
    nom VARCHAR(50)
);

INSERT INTO categorie (nom) VALUES
('Plat malagasy'),
('Plat chinois'),
('Soupe'),
('Dessert et goûter'),
('Boissons');

ALTER TABLE plat ADD COLUMN id_categorie INTEGER REFERENCES categorie(id_categorie);
UPDATE plat SET id_categorie = 1 WHERE nom = 'Romazava' OR nom = 'Ravitoto sy henakisoa' OR nom = 'Akoho sy voanio';
UPDATE plat SET id_categorie = 2 WHERE nom = 'Mi sao';
UPDATE plat SET id_categorie = 3 WHERE nom = 'Soupe chinoise';
UPDATE plat SET id_categorie = 4 WHERE nom = 'Mofo gasy(les 4)';
UPDATE plat SET id_categorie = 5 WHERE nom = 'Ranon''ampango';

-- Piège: Si on ajoute une colonne catégorie dans la table des plats et que une erreur de frappe s'est produit, la jointure pourrait être fausse