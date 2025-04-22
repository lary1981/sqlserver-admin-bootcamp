
# 📦 Installation de SQL Server et Outils Associés

## 1. Télécharger SQL Server (version gratuite - Developer ou Express)

👉 [Télécharger SQL Server Developer Edition (gratuit)](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)

- Choisir **Developer** ou **Express** selon ta machine.
- Lancer l’installation et sélectionner l’option **Basic** pour une installation rapide ou **Custom** pour choisir les composants.

## 2. Télécharger SQL Server Management Studio (SSMS)

👉 [Télécharger SSMS](https://learn.microsoft.com/fr-fr/sql/ssms/download-sql-server-management-studio-ssms)

> SSMS est l'outil graphique pour interagir avec ton instance SQL Server.

- Lancer le fichier `.exe` téléchargé.
- Suivre les instructions pour l’installation.

## 3. Installation avec Docker (optionnel pour les utilisateurs avancés)

Si tu préfères utiliser Docker :

```bash
docker pull mcr.microsoft.com/mssql/server:2022-latest
```

Lancer l'instance SQL Server avec :

```bash
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=TonMotDePasseFort123!" -p 1433:1433 --name sql2022 -d mcr.microsoft.com/mssql/server:2022-latest
```

## 4. Vérifier l'installation

- Ouvre **SQL Server Management Studio**.
- Connecte-toi avec :
  - **Serveur** : `localhost` ou `.\SQLEXPRESS` (selon ton installation)
  - **Authentification** : Windows ou SQL Server
  - **Login** : `sa` (si SQL Auth) et ton mot de passe

## 5. (Bonus) Installer Azure Data Studio

👉 [Télécharger Azure Data Studio](https://learn.microsoft.com/fr-fr/sql/azure-data-studio/download-azure-data-studio)

> Un éditeur moderne et léger, utile pour les développeurs SQL.

## 6. Tests post-installation

Exécute cette requête simple dans SSMS :

```sql
SELECT @@VERSION;
```

Elle retournera la version installée de SQL Server.

## 🧰 Checklist post-installation

- [x] SQL Server installé
- [x] SSMS fonctionnel
- [ ] Instance connectée avec authentification
- [ ] Premier test SQL exécuté
