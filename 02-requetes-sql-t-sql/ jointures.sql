
-- 🔹 Exemples de jointures SQL

-- Création d'une seconde table
CREATE TABLE Commandes (
    Id INT PRIMARY KEY,
    ClientId INT,
    Produit VARCHAR(100),
    Quantite INT,
    FOREIGN KEY (ClientId) REFERENCES Clients(Id)
);

-- Insertion de données
INSERT INTO Commandes (Id, ClientId, Produit, Quantite)
VALUES (1, 2, 'Livre', 3),
       (2, 2, 'Stylo', 10);

-- Jointure interne (INNER JOIN)
SELECT c.Nom, co.Produit, co.Quantite
FROM Clients c
INNER JOIN Commandes co ON c.Id = co.ClientId;

-- Jointure gauche (LEFT JOIN)
SELECT c.Nom, co.Produit
FROM Clients c
LEFT JOIN Commandes co ON c.Id = co.ClientId;

-- Jointure droite (RIGHT JOIN)
SELECT c.Nom, co.Produit
FROM Clients c
RIGHT JOIN Commandes co ON c.Id = co.ClientId;
