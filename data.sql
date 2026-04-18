-- Clients
INSERT INTO Clients VALUES (1, 'Ben Ali', 'Ahmed', 'ahmed@email.com', 'Tunis', '2023-01-15');
INSERT INTO Clients VALUES (2, 'Trabelsi', 'Sonia', 'sonia@email.com', 'Sfax', '2023-02-20');
INSERT INTO Clients VALUES (3, 'Mansouri', 'Karim', 'karim@email.com', 'Mahdia', '2023-03-10');
INSERT INTO Clients VALUES (4, 'Cherif', 'Lina', 'lina@email.com', 'Sousse', '2023-04-05');
INSERT INTO Clients VALUES (5, 'Brahim', 'Nour', 'nour@email.com', 'Mahdia', '2023-05-18');
INSERT INTO Clients VALUES (6, 'Hamdi', 'Omar', 'omar@email.com', 'Tunis', '2023-06-22');
INSERT INTO Clients VALUES (7, 'Riahi', 'Ines', 'ines@email.com', 'Bizerte', '2023-07-30');
INSERT INTO Clients VALUES (8, 'Sassi', 'Youssef', 'youssef@email.com', 'Nabeul', '2023-08-14');

-- Produits
INSERT INTO Produits VALUES (1, 'Laptop Pro', 'Informatique', 1200.00);
INSERT INTO Produits VALUES (2, 'Souris sans fil', 'Informatique', 25.00);
INSERT INTO Produits VALUES (3, 'Clavier mécanique', 'Informatique', 80.00);
INSERT INTO Produits VALUES (4, 'Écran 24 pouces', 'Informatique', 350.00);
INSERT INTO Produits VALUES (5, 'Chaise ergonomique', 'Mobilier', 450.00);
INSERT INTO Produits VALUES (6, 'Bureau réglable', 'Mobilier', 600.00);
INSERT INTO Produits VALUES (7, 'Casque audio', 'Accessoires', 120.00);
INSERT INTO Produits VALUES (8, 'Webcam HD', 'Accessoires', 90.00);

-- Commandes
INSERT INTO Commandes VALUES (1, 1, '2023-06-01', 'livré');
INSERT INTO Commandes VALUES (2, 2, '2023-06-05', 'livré');
INSERT INTO Commandes VALUES (3, 3, '2023-07-10', 'livré');
INSERT INTO Commandes VALUES (4, 4, '2023-07-15', 'en cours');
INSERT INTO Commandes VALUES (5, 5, '2023-08-01', 'livré');
INSERT INTO Commandes VALUES (6, 1, '2023-08-20', 'livré');
INSERT INTO Commandes VALUES (7, 6, '2023-09-05', 'annulé');
INSERT INTO Commandes VALUES (8, 7, '2023-09-18', 'livré');
INSERT INTO Commandes VALUES (9, 8, '2023-10-02', 'en cours');
INSERT INTO Commandes VALUES (10, 2, '2023-10-15', 'livré');

-- Lignes de commande
INSERT INTO LignesCommande VALUES (1, 1, 1, 1, 1200.00);
INSERT INTO LignesCommande VALUES (2, 1, 2, 2, 25.00);
INSERT INTO LignesCommande VALUES (3, 2, 3, 1, 80.00);
INSERT INTO LignesCommande VALUES (4, 3, 4, 1, 350.00);
INSERT INTO LignesCommande VALUES (5, 3, 7, 1, 120.00);
INSERT INTO LignesCommande VALUES (6, 4, 5, 1, 450.00);
INSERT INTO LignesCommande VALUES (7, 5, 1, 1, 1200.00);
INSERT INTO LignesCommande VALUES (8, 6, 8, 2, 90.00);
INSERT INTO LignesCommande VALUES (9, 7, 6, 1, 600.00);
INSERT INTO LignesCommande VALUES (10, 8, 2, 3, 25.00);
INSERT INTO LignesCommande VALUES (11, 9, 3, 2, 80.00);
INSERT INTO LignesCommande VALUES (12, 10, 4, 1, 350.00);
