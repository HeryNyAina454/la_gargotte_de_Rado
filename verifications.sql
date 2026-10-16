-- Etape 1
SELECT * FROM plat ORDER BY prix DESC;

-- Etape 2
SELECT 
    c.nom as categorie, 
    COUNT(p.id_plat) as nombre_plats
FROM categorie c
LEFT JOIN plat p 
    ON c.id_categorie = p.id_categorie
GROUP BY c.id_categorie, c.nom
ORDER BY c.id_categorie;

-- Etape 3
SELECT
    c.id_commande,
    c.date,
    COALESCE(SUM(dc.quantite * p.prix), 0) AS montant_total
FROM commande c
LEFT JOIN details_commande dc
    ON c.id_commande = dc.id_commande
LEFT JOIN plat p
    ON dc.id_plat = p.id_plat
GROUP BY c.id_commande, c.date
ORDER BY c.id_commande;

-- Etape 4
SELECT
    c.id_commande,
    c.date,
    COALESCE(cl.nom, 'client de passage') AS client
FROM commande c
LEFT JOIN clients cl
    ON c.id_client = cl.id_client
ORDER BY c.id_commande;

-- Etape 5
SELECT
    s.nom AS serveur,
    COUNT(DISTINCT c.id_commande) AS nombre_commandes,
    COALESCE(SUM(dc.quantite * p.prix), 0) AS chiffre_affaires
FROM serveur s
LEFT JOIN commande c
    ON s.id_serveur = c.id_serveur
LEFT JOIN details_commande dc
    ON c.id_commande = dc.id_commande
LEFT JOIN plat p
    ON dc.id_plat = p.id_plat
GROUP BY s.id_serveur, s.nom
ORDER BY chiffre_affaires DESC;