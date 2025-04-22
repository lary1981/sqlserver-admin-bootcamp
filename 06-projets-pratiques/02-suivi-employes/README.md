📘 02-suivi-employes/README.md
Titre : Suivi des employés et départements
Objectifs :

Gérer les infos RH

Suivre le nombre d’employés par département

Utiliser les jointures

-- 📄 02-suivi-employes/init_employes.sql

CREATE DATABASE RH_DB;
USE RH_DB;

CREATE TABLE Departements (
    id INT PRIMARY KEY IDENTITY,
    nom VARCHAR(100)
);

CREATE TABLE Employes (
    id INT PRIMARY KEY IDENTITY,
    nom VARCHAR(100),
    poste VARCHAR(50),
    departement_id INT FOREIGN KEY REFERENCES Departements(id)
);

INSERT INTO Departements (nom) VALUES ('IT'), ('Finance'), ('RH');
INSERT INTO Employes (nom, poste, departement_id) VALUES
('Alice', 'Développeuse', 1),
('Bob', 'Comptable', 2),
('Claire', 'RH', 3);


-- 📄 02-suivi-employes/statistiques.sql
-- Nombre d’employés par département

SELECT D.nom, COUNT(E.id) AS nb_employes
FROM Departements D
LEFT JOIN Employes E ON D.id = E.departement_id
GROUP BY D.nom;
