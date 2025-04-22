
-- ⚙️ Script T-SQL pour créer un job SQL Server Agent de sauvegarde

USE msdb;

EXEC sp_add_job
    @job_name = N'SauvegardeAutoMaBase';

EXEC sp_add_jobstep
    @job_name = N'SauvegardeAutoMaBase',
    @step_name = N'EtapeSauvegarde',
    @subsystem = N'TSQL',
    @command = N'BACKUP DATABASE MaBaseDeDonnees TO DISK = ''C:\sauvegardes\MaBaseDeDonnees_Auto.bak'' WITH INIT',
    @retry_attempts = 3,
    @retry_interval = 5;

EXEC sp_add_schedule
    @schedule_name = N'SauvegardeTousLesJours',
    @freq_type = 4,  -- Daily
    @freq_interval = 1,
    @active_start_time = 233000;  -- 23h30

EXEC sp_attach_schedule
    @job_name = N'SauvegardeAutoMaBase',
    @schedule_name = N'SauvegardeTousLesJours';

EXEC sp_add_jobserver
    @job_name = N'SauvegardeAutoMaBase';
