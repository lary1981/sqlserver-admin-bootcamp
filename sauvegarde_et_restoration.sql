
-- 💾 Sauvegarde et restauration de base de données

-- Sauvegarde complète
BACKUP DATABASE MaBaseDeDonnees
TO DISK = 'C:\sauvegardes\MaBaseDeDonnees_complet.bak';

-- Restauration complète (base à fermer ou mettre en mode single user)
USE master;
ALTER DATABASE MaBaseDeDonnees SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

RESTORE DATABASE MaBaseDeDonnees
FROM DISK = 'C:\sauvegardes\MaBaseDeDonnees_complet.bak'
WITH REPLACE;

ALTER DATABASE MaBaseDeDonnees SET MULTI_USER;
