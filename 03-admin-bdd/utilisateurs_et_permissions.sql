
-- 🔐 Gestion des utilisateurs et des rôles

-- Création d’un login SQL Server
CREATE LOGIN MonLoginAvecMotDePasse 
WITH PASSWORD = 'MonMotDePasseFort2024';

-- Création d’un utilisateur dans une base spécifique
USE MaBaseDeDonnees;
CREATE USER MonUtilisateur POUR LOGIN MonLoginAvecMotDePasse;

-- Attribution de rôles (exemples)
EXEC sp_addrolemember 'db_datareader', 'MonUtilisateur';  -- Lecture
EXEC sp_addrolemember 'db_datawriter', 'MonUtilisateur';  -- Écriture

-- Suppression
-- DROP USER MonUtilisateur;
-- DROP LOGIN MonLoginAvecMotDePasse;
