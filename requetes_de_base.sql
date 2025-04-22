
-- 🔹 Requêtes SQL de base

-- Création de table exemple
CREATE TABLE Clients (
    Id INT PRIMARY KEY,
    Nom VARCHAR(100),
    Email VARCHAR(100),
    Ville VARCHAR(50)
);

-- Insertion de données
INSERT INTO Clients (Id, Nom, Email, Ville)
VALUES (1, 'Jean Dupont', 'jean.dupont@email.com', 'Paris'),
       (2, 'Marie Curie', 'marie.curie@email.com', 'Lyon');

-- Sélection de tous les clients
SELECT * FROM Clients;

-- Filtrage
SELECT * FROM Clients WHERE Ville = 'Paris';

-- Tri
SELECT * FROM Clients ORDER BY Nom ASC;

-- Mise à jour
UPDATE Clients SET Ville = 'Marseille' WHERE Id = 2;

-- Suppression
DELETE FROM Clients WHERE Id = 1;
