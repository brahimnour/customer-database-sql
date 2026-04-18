-- ── 1. Chiffre d'affaires total ──────────────────
SELECT ROUND(SUM(quantite * prix_unitaire), 2) AS chiffre_affaires_total
FROM LignesCommande;


-- ── 2. Top 5 produits les plus vendus ────────────
SELECT 
    p.nom AS produit,
    SUM(lc.quantite) AS quantite_totale,
    ROUND(SUM(lc.quantite * lc.prix_unitaire), 2) AS revenus
FROM LignesCommande lc
JOIN Produits p ON lc.produit_id = p.produit_id
GROUP BY p.nom
ORDER BY revenus DESC
LIMIT 5;


-- ── 3. Clients les plus actifs ───────────────────
SELECT 
    c.nom,
    c.prenom,
    c.ville,
    COUNT(cmd.commande_id) AS nb_commandes,
    ROUND(SUM(lc.quantite * lc.prix_unitaire), 2) AS total_depense
FROM Clients c
JOIN Commandes cmd ON c.client_id = cmd.client_id
JOIN LignesCommande lc ON cmd.commande_id = lc.commande_id
WHERE cmd.statut = 'livré'
GROUP BY c.client_id
ORDER BY total_depense DESC;


-- ── 4. Ventes par catégorie de produit ───────────
SELECT 
    p.categorie,
    COUNT(lc.ligne_id) AS nb_ventes,
    ROUND(SUM(lc.quantite * lc.prix_unitaire), 2) AS revenus
FROM LignesCommande lc
JOIN Produits p ON lc.produit_id = p.produit_id
GROUP BY p.categorie
ORDER BY revenus DESC;


-- ── 5. Commandes par statut ──────────────────────
SELECT 
    statut,
    COUNT(*) AS nombre,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Commandes), 1) AS pourcentage
FROM Commandes
GROUP BY statut
ORDER BY nombre DESC;


-- ── 6. Ventes par mois ───────────────────────────
SELECT 
    STRFTIME('%Y-%m', date_commande) AS mois,
    COUNT(DISTINCT cmd.commande_id) AS nb_commandes,
    ROUND(SUM(lc.quantite * lc.prix_unitaire), 2) AS revenus
FROM Commandes cmd
JOIN LignesCommande lc ON cmd.commande_id = lc.commande_id
WHERE cmd.statut != 'annulé'
GROUP BY mois
ORDER BY mois;


-- ── 7. Clients sans commande ─────────────────────
SELECT nom, prenom, email, ville
FROM Clients
WHERE client_id NOT IN (
    SELECT DISTINCT client_id FROM Commandes
);


-- ── 8. Panier moyen par client ───────────────────
SELECT 
    c.nom,
    c.prenom,
    ROUND(AVG(lc.quantite * lc.prix_unitaire), 2) AS panier_moyen
FROM Clients c
JOIN Commandes cmd ON c.client_id = cmd.client_id
JOIN LignesCommande lc ON cmd.commande_id = lc.commande_id
GROUP BY c.client_id
ORDER BY panier_moyen DESC;
