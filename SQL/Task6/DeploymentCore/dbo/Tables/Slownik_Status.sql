CREATE TABLE [dbo].[Slownik_Status] (
    [ID]    UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [Nazwa] NVARCHAR (100)   NOT NULL,
    [Opis]  NVARCHAR (255)   NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);
GO

