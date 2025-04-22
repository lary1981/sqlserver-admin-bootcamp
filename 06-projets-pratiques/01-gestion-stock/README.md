📘 01-gestion-stock/README.md
Titre : Système simple de gestion de stock
Objectifs :

Créer une base de données de stock

Gérer les entrées/sorties de produits

Calculer les stocks disponibles


-- 📄 01-gestion-stock/init_stock.sql

CREATE DATABASE StockDB;
USE StockDB;

CREATE TABLE Produits (
    id INT PRIMARY KEY IDENTITY,
    nom VARCHAR(100),
    categorie VARCHAR(50),
    quantite_en_stock INT
);

INSERT INTO Produits (nom, categorie, quantite_en_stock)
VALUES 
('Stylo', 'Papeterie', 150),
('Ordinateur', 'Informatique', 20),
('Chaise', 'Mobilier', 50);



-- 📄 01-gestion-stock/operations_stock.sql
-- Sortie de stock

UPDATE Produits SET quantite_en_stock = quantite_en_stock - 5 WHERE nom = 'Stylo';

-- Réapprovisionnement
UPDATE Produits SET quantite_en_stock = quantite_en_stock + 10 WHERE nom = 'Ordinateur';

-- Vérifier le stock
SELECT * FROM Produits WHERE quantite_en_stock < 30;

