CREATE TABLE [dbo].[Wdrozenie_Komentarz] (
    [ID]             UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [WdrozenieID]    UNIQUEIDENTIFIER NOT NULL,
    [DataKomentarza] DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [Komentowal]     UNIQUEIDENTIFIER NOT NULL,
    [Tresc]          NVARCHAR (MAX)   NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([Komentowal]) REFERENCES [dbo].[Uzytkownik] ([ID]),
    FOREIGN KEY ([WdrozenieID]) REFERENCES [dbo].[Wdrozenie] ([ID])
);
GO

