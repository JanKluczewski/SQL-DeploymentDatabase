CREATE TABLE [dbo].[PowerBI_Raport] (
    [ID]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [Nazwa]        NVARCHAR (200)   NOT NULL,
    [Workspace]    NVARCHAR (200)   NULL,
    [WlascicielID] UNIQUEIDENTIFIER NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([WlascicielID]) REFERENCES [dbo].[Uzytkownik] ([ID])
);
GO

