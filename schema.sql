-- Table Clients
CREATE TABLE Clients (
    client_id   INTEGER PRIMARY KEY,
    nom         VARCHAR(50) NOT NULL,
    prenom      VARCHAR(50) NOT NULL,
    email       VARCHAR(100) UNIQUE NOT NULL,
    ville       VARCHAR(50),
    date_inscription DATE
);

-- Table Produits
CREATE TABLE Produits (
    produit_id  INTEGER PRIMARY KEY,
    nom         VARCHAR(100) NOT NULL,
    categorie   VARCHAR(50),
    prix        DECIMAL(10,2) NOT NULL
);

-- Table Commandes
CREATE TABLE Commandes (
    commande_id INTEGER PRIMARY KEY,
    client_id   INTEGER NOT NULL,
    date_commande DATE NOT NULL,
    statut      VARCHAR(20) DEFAULT 'en cours',
    FOREIGN KEY (client_id) REFERENCES Clients(client_id)
);

-- Table Lignes de commande
CREATE TABLE LignesCommande (
    ligne_id    INTEGER PRIMARY KEY,
    commande_id INTEGER NOT NULL,
    produit_id  INTEGER NOT NULL,
    quantite    INTEGER NOT NULL,
    prix_unitaire DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (commande_id) REFERENCES Commandes(commande_id),
    FOREIGN KEY (produit_id)  REFERENCES Produits(produit_id)
);
