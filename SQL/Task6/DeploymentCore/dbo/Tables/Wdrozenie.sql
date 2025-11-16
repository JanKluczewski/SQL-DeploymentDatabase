CREATE TABLE [dbo].[Wdrozenie] (
    [ID]            UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [Tytul]         NVARCHAR (200)   NOT NULL,
    [DataWdrozenia] DATETIME2 (7)    NOT NULL,
    [Utworzono]     DATETIME2 (7)    DEFAULT (getdate()) NOT NULL,
    [Utworzyl]      UNIQUEIDENTIFIER NOT NULL,
    [StatusID]      UNIQUEIDENTIFIER NOT NULL,
    [SystemID]      UNIQUEIDENTIFIER NOT NULL,
    [ModulID]       UNIQUEIDENTIFIER NOT NULL,
    [SrodowiskoID]  UNIQUEIDENTIFIER NOT NULL,
    [Uwagi]         NVARCHAR (MAX)   NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([ModulID]) REFERENCES [dbo].[Slownik_Modul] ([ID]),
    FOREIGN KEY ([SrodowiskoID]) REFERENCES [dbo].[Slownik_Srodowisko] ([ID]),
    FOREIGN KEY ([StatusID]) REFERENCES [dbo].[Slownik_Status] ([ID]),
    FOREIGN KEY ([SystemID]) REFERENCES [dbo].[Slownik_System] ([ID]),
    FOREIGN KEY ([Utworzyl]) REFERENCES [dbo].[Uzytkownik] ([ID])
);
GO

