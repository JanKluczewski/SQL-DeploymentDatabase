CREATE TABLE [dbo].[Slownik_Modul] (
    [ID]       UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [SystemID] UNIQUEIDENTIFIER NOT NULL,
    [Nazwa]    NVARCHAR (100)   NOT NULL,
    [Opis]     NVARCHAR (255)   NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([SystemID]) REFERENCES [dbo].[Slownik_System] ([ID])
);
GO

