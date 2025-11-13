-- =========================================
-- Skrypt: Utworzenie baz DeploymentCore_DEV i DeploymentCore_TST
-- Autor: Jan Kluczewski
-- System: Microsoft SQL Server (MSSQL)
-- =========================================

-- Ustaw kontekst na master, bo nie możemy tworzyć bazy z innej bazy
USE [master];
GO

-- =========================================
-- Tworzenie bazy DeploymentCore_TST
-- =========================================
IF NOT EXISTS (
    SELECT name 
    FROM sys.databases 
    WHERE name = N'DeploymentCore_TST'
)
BEGIN
    PRINT 'Tworzenie bazy DeploymentCore_TST...';
    
    CREATE DATABASE [DeploymentCore_TST]
    ON PRIMARY (
        NAME = N'DeploymentCore_TST_Data',
        FILENAME = N'/var/opt/mssql/data2/eploymentCore_TST.mdf',
        SIZE = 50MB,
        MAXSIZE = UNLIMITED,
        FILEGROWTH = 10MB
    )
    LOG ON (
        NAME = N'DeploymentCore_TST_Log',
        FILENAME = N'/var/opt/mssql/data2/eploymentCore_TST_log.ldf',
        SIZE = 20MB,
        MAXSIZE = UNLIMITED,
        FILEGROWTH = 10MB
    );

    PRINT 'Baza DeploymentCore_TST została utworzona.';
END
ELSE
BEGIN
    PRINT 'Baza DeploymentCore_TST już istnieje.';
END
GO
