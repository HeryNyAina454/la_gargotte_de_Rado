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
