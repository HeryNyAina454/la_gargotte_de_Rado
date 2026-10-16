- CATEGORIE(**id_categorie**, nom)
- PLAT(**id_plat**, nom, prix, #id_categorie)
- CLIENTS(**id_client**, nom)
- SERVEUR(**id_serveur**, nom)
- TABLE_GARGOTTE(**id_table**, numero)
- COMMANDE(**id_commande**, date, #id_client?, #id_serveur)
- DETAILS_COMMANDE(**id_detail_commande**, #id_commande, #id_plat, quantite)

