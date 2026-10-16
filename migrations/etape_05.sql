CREATE TABLE serveur(
    id_serveur serial PRIMARY KEY,
    nom VARCHAR(50) not null
); 

CREATE TABLE table_gargotte(
    id_table serial PRIMARY KEY,
    numero INTEGER not null
);

ALTER TABLE commande
ADD COLUMN id_serveur INTEGER REFERENCES serveur(id_serveur);

INSERT INTO serveur (nom) VALUES
('Njaka Rakoto'),
('Lalao Rasoa');

INSERT INTO table_gargotte (numero) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8);

UPDATE commande SET id_serveur = 1 WHERE id_commande = 1;

-- Piège: le nom table pose problème en SQL car elle est un mot réservé.
