CREATE TABLE clients(
    id_client serial PRIMARY KEY,
    nom VARCHAR(50) not null
);

ALTER TABLE commande ADD COLUMN id_client INTEGER REFERENCES clients(id_client);

INSERT INTO clients (nom) VALUES
('Rasoa');

UPDATE commande SET id_client = 1 WHERE id_commande = 1;

-- Piège: La clé étrangère doit être null car il y a des clients de passage
-- On utilise left join pour que les clients de passage apparaissent dans la liste des commandes