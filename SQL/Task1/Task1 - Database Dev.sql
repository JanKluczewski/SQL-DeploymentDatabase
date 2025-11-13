-- =========================================
-- Skrypt: Utworzenie baz DeploymentCore_DEV i DeploymentCore_TST
-- Autor: Jan Kluczewski
-- System: Microsoft SQL Server (MSSQL)
-- =========================================

-- Ustaw kontekst na master, bo nie możemy tworzyć bazy z innej bazy
USE [master];
GO

-- =========================================
-- Tworzenie bazy DeploymentCore_DEV
-- =========================================
IF NOT EXISTS (
    SELECT name 
    FROM sys.databases 
    WHERE name = N'DeploymentCore_DEV'
)
BEGIN
    PRINT 'Tworzenie bazy DeploymentCore_DEV...';
    
    CREATE DATABASE [DeploymentCore_DEV]
    ON PRIMARY (
        NAME = N'DeploymentCore_DEV_Data',
        FILENAME = N'/var/opt/mssql/data1/DeploymentCore_DEV.mdf',
        SIZE = 50MB,
        MAXSIZE = UNLIMITED,
        FILEGROWTH = 10MB
    )
    LOG ON (
        NAME = N'DeploymentCore_DEV_Log',
        FILENAME = N'/var/opt/mssql/data1/DeploymentCore_DEV_log.ldf',
        SIZE = 20MB,
        MAXSIZE = UNLIMITED,
        FILEGROWTH = 10MB
    );

    PRINT 'Baza DeploymentCore_DEV została utworzona.';
END
ELSE
BEGIN
    PRINT 'Baza DeploymentCore_DEV już istnieje.';
END
GO
