# 📝 Fiches Mémo pour l'administration de SQL Server

## 🔑 Commandes de base
```sql
-- Sélectionner toutes les données d'une table
SELECT * FROM TableName;

-- Ajouter un utilisateur
CREATE LOGIN NomUtilisateur WITH PASSWORD = 'MotDePasse';
CREATE USER NomUtilisateur FOR LOGIN NomUtilisateur;
