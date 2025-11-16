CREATE TABLE [dbo].[Wdrozenie_Plik] (
    [ID]           UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [WdrozenieID]  UNIQUEIDENTIFIER NOT NULL,
    [NazwaPliku]   NVARCHAR (255)   NOT NULL,
    [SciezkaPliku] NVARCHAR (500)   NOT NULL,
    [DataWgrania]  DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([WdrozenieID]) REFERENCES [dbo].[Wdrozenie] ([ID])
);
GO

