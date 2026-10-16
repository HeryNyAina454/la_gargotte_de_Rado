CREATE TABLE plat(
    id_plat serial PRIMARY KEY,
    nom VARCHAR(50),
    categorie VARCHAR(50),
    prix numeric(10,2) not null
);

INSERT INTO plat(id_plat, nom, categorie, prix) VALUES
(1, 'Romazava', 'Plat malagasy', 7000),
(2, 'Ravitoto sy henakisoa', 'Plat malagasy', 8000),
(3, 'Akoho sy voanio', 'Plat malagasy', 8500),
(4, 'Mi sao', 'Plat chinois', 6000),
(5, 'Soupe chinoise', 'Soupe', 5000),
(6, 'Mofo gasy(les 4)', 'Dessert et goûter', 1000),
(7, 'Ranon''ampango', 'Boisson', 500);

SELECT * FROM plat ORDER By prix DESC;

-- Piège: Numeric pour le type prix pour eviter les erreurs d'arrondi au prix et serial pour l'ID car ça auto increment