CREATE TABLE commande(
    id_commande serial PRIMARY KEY,
    date DATE not null
);

CREATE TABLE details_commande(
    id_detail_commande serial PRIMARY KEY,
    id_commande INTEGER REFERENCES commande(id_commande),
    id_plat INTEGER REFERENCES plat(id_plat),
    quantite INTEGER not null
);

INSERT INTO commande (date) VALUES
('2026-10-15'),
('2026-10-16');

INSERT INTO details_commande (id_commande, id_plat, quantite) VALUES
(1, 1, 2),
(1, 5, 3),
(2, 2, 1),
(2, 3, 2);

-- Piège: On place la quantité dans la table details_commande.