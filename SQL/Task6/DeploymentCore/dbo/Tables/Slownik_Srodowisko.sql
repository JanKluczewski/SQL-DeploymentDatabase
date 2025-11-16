CREATE TABLE [dbo].[Slownik_Srodowisko] (
    [ID]    UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [Nazwa] NVARCHAR (50)    NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);
GO

