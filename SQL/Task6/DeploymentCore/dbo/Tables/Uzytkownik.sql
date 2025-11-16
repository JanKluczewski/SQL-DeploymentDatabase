CREATE TABLE [dbo].[Uzytkownik] (
    [ID]               UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [Login]            NVARCHAR (100)   NOT NULL,
    [NazwaWyswietlana] NVARCHAR (150)   NULL,
    [Email]            NVARCHAR (150)   NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);
GO

