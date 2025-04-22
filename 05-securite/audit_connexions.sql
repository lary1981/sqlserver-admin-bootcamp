-- 📋 Mise en place d’un audit de connexions (via SQL Server Audit)

USE master;

-- Créer un audit
CREATE SERVER AUDIT AuditConnexion
TO FILE (FILEPATH = 'C:\\AuditSQL\\')
WITH (ON_FAILURE = CONTINUE);

-- Créer une spécification d'audit de connexion
CREATE SERVER AUDIT SPECIFICATION AuditConnexionSpec
FOR SERVER AUDIT AuditConnexion
ADD (SUCCESSFUL_LOGIN_GROUP),
ADD (FAILED_LOGIN_GROUP);

-- Activer l’audit et la spécification
ALTER SERVER AUDIT AuditConnexion WITH (STATE = ON);
ALTER SERVER AUDIT SPECIFICATION AuditConnexionSpec WITH (STATE = ON);
