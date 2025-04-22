
# 💾 Script PowerShell pour sauvegarde automatique de SQL Server
# À planifier avec le Planificateur de tâches Windows

$serverName = "localhost"
$databaseName = "MaBaseDeDonnees"
$backupPath = "C:\sauvegardes\${databaseName}_$(Get-Date -Format yyyyMMdd_HHmmss).bak"

Invoke-Sqlcmd -Query "BACKUP DATABASE [$databaseName] TO DISK = N'$backupPath' WITH INIT, COMPRESSION;" -ServerInstance $serverName

Write-Output "Sauvegarde terminée : $backupPath"
