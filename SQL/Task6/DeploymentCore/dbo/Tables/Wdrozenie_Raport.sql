CREATE TABLE [dbo].[Wdrozenie_Raport] (
    [ID]          UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [WdrozenieID] UNIQUEIDENTIFIER NOT NULL,
    [RaportID]    UNIQUEIDENTIFIER NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([RaportID]) REFERENCES [dbo].[PowerBI_Raport] ([ID]),
    FOREIGN KEY ([WdrozenieID]) REFERENCES [dbo].[Wdrozenie] ([ID])
);
GO

