
PRINT N'Creating Table [dbo].[PowerBI_Raport]...';


GO
CREATE TABLE [dbo].[PowerBI_Raport] (
    [ID]           UNIQUEIDENTIFIER NOT NULL,
    [Nazwa]        NVARCHAR (200)   NOT NULL,
    [Workspace]    NVARCHAR (200)   NULL,
    [WlascicielID] UNIQUEIDENTIFIER NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
PRINT N'Creating Table [dbo].[Slownik_Modul]...';


GO
CREATE TABLE [dbo].[Slownik_Modul] (
    [ID]       UNIQUEIDENTIFIER NOT NULL,
    [SystemID] UNIQUEIDENTIFIER NOT NULL,
    [Nazwa]    NVARCHAR (100)   NOT NULL,
    [Opis]     NVARCHAR (255)   NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
PRINT N'Creating Table [dbo].[Slownik_Srodowisko]...';


GO
CREATE TABLE [dbo].[Slownik_Srodowisko] (
    [ID]    UNIQUEIDENTIFIER NOT NULL,
    [Nazwa] NVARCHAR (50)    NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
PRINT N'Creating Table [dbo].[Slownik_Status]...';


GO
CREATE TABLE [dbo].[Slownik_Status] (
    [ID]    UNIQUEIDENTIFIER NOT NULL,
    [Nazwa] NVARCHAR (100)   NOT NULL,
    [Opis]  NVARCHAR (255)   NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
PRINT N'Creating Table [dbo].[Slownik_System]...';


GO
CREATE TABLE [dbo].[Slownik_System] (
    [ID]    UNIQUEIDENTIFIER NOT NULL,
    [Nazwa] NVARCHAR (100)   NOT NULL,
    [Opis]  NVARCHAR (255)   NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
PRINT N'Creating Table [dbo].[Uzytkownik]...';


GO
CREATE TABLE [dbo].[Uzytkownik] (
    [ID]               UNIQUEIDENTIFIER NOT NULL,
    [Login]            NVARCHAR (100)   NOT NULL,
    [NazwaWyswietlana] NVARCHAR (150)   NULL,
    [Email]            NVARCHAR (150)   NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
PRINT N'Creating Table [dbo].[Wdrozenie]...';


GO
CREATE TABLE [dbo].[Wdrozenie] (
    [ID]            UNIQUEIDENTIFIER NOT NULL,
    [Tytul]         NVARCHAR (200)   NOT NULL,
    [DataWdrozenia] DATETIME2 (7)    NOT NULL,
    [Utworzono]     DATETIME2 (7)    NOT NULL,
    [Utworzyl]      UNIQUEIDENTIFIER NOT NULL,
    [StatusID]      UNIQUEIDENTIFIER NOT NULL,
    [SystemID]      UNIQUEIDENTIFIER NOT NULL,
    [ModulID]       UNIQUEIDENTIFIER NOT NULL,
    [SrodowiskoID]  UNIQUEIDENTIFIER NOT NULL,
    [Uwagi]         NVARCHAR (MAX)   NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
PRINT N'Creating Table [dbo].[Wdrozenie_Komentarz]...';


GO
CREATE TABLE [dbo].[Wdrozenie_Komentarz] (
    [ID]             UNIQUEIDENTIFIER NOT NULL,
    [WdrozenieID]    UNIQUEIDENTIFIER NOT NULL,
    [DataKomentarza] DATETIME2 (7)    NOT NULL,
    [Komentowal]     UNIQUEIDENTIFIER NOT NULL,
    [Tresc]          NVARCHAR (MAX)   NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
PRINT N'Creating Table [dbo].[Wdrozenie_Plik]...';


GO
CREATE TABLE [dbo].[Wdrozenie_Plik] (
    [ID]           UNIQUEIDENTIFIER NOT NULL,
    [WdrozenieID]  UNIQUEIDENTIFIER NOT NULL,
    [NazwaPliku]   NVARCHAR (255)   NOT NULL,
    [SciezkaPliku] NVARCHAR (500)   NOT NULL,
    [DataWgrania]  DATETIME2 (7)    NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
PRINT N'Creating Table [dbo].[Wdrozenie_Raport]...';


GO
CREATE TABLE [dbo].[Wdrozenie_Raport] (
    [ID]          UNIQUEIDENTIFIER NOT NULL,
    [WdrozenieID] UNIQUEIDENTIFIER NOT NULL,
    [RaportID]    UNIQUEIDENTIFIER NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
PRINT N'Creating Default Constraint unnamed constraint on [dbo].[PowerBI_Raport]...';


GO
ALTER TABLE [dbo].[PowerBI_Raport]
    ADD DEFAULT (newid()) FOR [ID];


GO
PRINT N'Creating Default Constraint unnamed constraint on [dbo].[Slownik_Modul]...';


GO
ALTER TABLE [dbo].[Slownik_Modul]
    ADD DEFAULT (newid()) FOR [ID];


GO
PRINT N'Creating Default Constraint unnamed constraint on [dbo].[Slownik_Srodowisko]...';


GO
ALTER TABLE [dbo].[Slownik_Srodowisko]
    ADD DEFAULT (newid()) FOR [ID];


GO
PRINT N'Creating Default Constraint unnamed constraint on [dbo].[Slownik_Status]...';


GO
ALTER TABLE [dbo].[Slownik_Status]
    ADD DEFAULT (newid()) FOR [ID];


GO
PRINT N'Creating Default Constraint unnamed constraint on [dbo].[Slownik_System]...';


GO
ALTER TABLE [dbo].[Slownik_System]
    ADD DEFAULT (newid()) FOR [ID];


GO
PRINT N'Creating Default Constraint unnamed constraint on [dbo].[Uzytkownik]...';


GO
ALTER TABLE [dbo].[Uzytkownik]
    ADD DEFAULT (newid()) FOR [ID];


GO
PRINT N'Creating Default Constraint unnamed constraint on [dbo].[Wdrozenie]...';


GO
ALTER TABLE [dbo].[Wdrozenie]
    ADD DEFAULT (newid()) FOR [ID];


GO
PRINT N'Creating Default Constraint unnamed constraint on [dbo].[Wdrozenie]...';


GO
ALTER TABLE [dbo].[Wdrozenie]
    ADD DEFAULT (getdate()) FOR [Utworzono];


GO
PRINT N'Creating Default Constraint unnamed constraint on [dbo].[Wdrozenie_Komentarz]...';


GO
ALTER TABLE [dbo].[Wdrozenie_Komentarz]
    ADD DEFAULT (newid()) FOR [ID];


GO
PRINT N'Creating Default Constraint unnamed constraint on [dbo].[Wdrozenie_Komentarz]...';


GO
ALTER TABLE [dbo].[Wdrozenie_Komentarz]
    ADD DEFAULT (getdate()) FOR [DataKomentarza];


GO
PRINT N'Creating Default Constraint unnamed constraint on [dbo].[Wdrozenie_Plik]...';


GO
ALTER TABLE [dbo].[Wdrozenie_Plik]
    ADD DEFAULT (getdate()) FOR [DataWgrania];


GO
PRINT N'Creating Default Constraint unnamed constraint on [dbo].[Wdrozenie_Plik]...';


GO
ALTER TABLE [dbo].[Wdrozenie_Plik]
    ADD DEFAULT (newid()) FOR [ID];


GO
PRINT N'Creating Default Constraint unnamed constraint on [dbo].[Wdrozenie_Raport]...';


GO
ALTER TABLE [dbo].[Wdrozenie_Raport]
    ADD DEFAULT (newid()) FOR [ID];


GO
PRINT N'Creating Foreign Key unnamed constraint on [dbo].[PowerBI_Raport]...';


GO
ALTER TABLE [dbo].[PowerBI_Raport] WITH NOCHECK
    ADD FOREIGN KEY ([WlascicielID]) REFERENCES [dbo].[Uzytkownik] ([ID]);


GO
PRINT N'Creating Foreign Key unnamed constraint on [dbo].[Slownik_Modul]...';


GO
ALTER TABLE [dbo].[Slownik_Modul] WITH NOCHECK
    ADD FOREIGN KEY ([SystemID]) REFERENCES [dbo].[Slownik_System] ([ID]);


GO
PRINT N'Creating Foreign Key unnamed constraint on [dbo].[Wdrozenie]...';


GO
ALTER TABLE [dbo].[Wdrozenie] WITH NOCHECK
    ADD FOREIGN KEY ([StatusID]) REFERENCES [dbo].[Slownik_Status] ([ID]);


GO
PRINT N'Creating Foreign Key unnamed constraint on [dbo].[Wdrozenie]...';


GO
ALTER TABLE [dbo].[Wdrozenie] WITH NOCHECK
    ADD FOREIGN KEY ([SystemID]) REFERENCES [dbo].[Slownik_System] ([ID]);


GO
PRINT N'Creating Foreign Key unnamed constraint on [dbo].[Wdrozenie]...';


GO
ALTER TABLE [dbo].[Wdrozenie] WITH NOCHECK
    ADD FOREIGN KEY ([ModulID]) REFERENCES [dbo].[Slownik_Modul] ([ID]);


GO
PRINT N'Creating Foreign Key unnamed constraint on [dbo].[Wdrozenie]...';


GO
ALTER TABLE [dbo].[Wdrozenie] WITH NOCHECK
    ADD FOREIGN KEY ([SrodowiskoID]) REFERENCES [dbo].[Slownik_Srodowisko] ([ID]);


GO
PRINT N'Creating Foreign Key unnamed constraint on [dbo].[Wdrozenie]...';


GO
ALTER TABLE [dbo].[Wdrozenie] WITH NOCHECK
    ADD FOREIGN KEY ([Utworzyl]) REFERENCES [dbo].[Uzytkownik] ([ID]);


GO
PRINT N'Creating Foreign Key unnamed constraint on [dbo].[Wdrozenie_Komentarz]...';


GO
ALTER TABLE [dbo].[Wdrozenie_Komentarz] WITH NOCHECK
    ADD FOREIGN KEY ([WdrozenieID]) REFERENCES [dbo].[Wdrozenie] ([ID]);


GO
PRINT N'Creating Foreign Key unnamed constraint on [dbo].[Wdrozenie_Komentarz]...';


GO
ALTER TABLE [dbo].[Wdrozenie_Komentarz] WITH NOCHECK
    ADD FOREIGN KEY ([Komentowal]) REFERENCES [dbo].[Uzytkownik] ([ID]);


GO
PRINT N'Creating Foreign Key unnamed constraint on [dbo].[Wdrozenie_Plik]...';


GO
ALTER TABLE [dbo].[Wdrozenie_Plik] WITH NOCHECK
    ADD FOREIGN KEY ([WdrozenieID]) REFERENCES [dbo].[Wdrozenie] ([ID]);


GO
PRINT N'Creating Foreign Key unnamed constraint on [dbo].[Wdrozenie_Raport]...';


GO
ALTER TABLE [dbo].[Wdrozenie_Raport] WITH NOCHECK
    ADD FOREIGN KEY ([RaportID]) REFERENCES [dbo].[PowerBI_Raport] ([ID]);


GO
PRINT N'Creating Foreign Key unnamed constraint on [dbo].[Wdrozenie_Raport]...';


GO
ALTER TABLE [dbo].[Wdrozenie_Raport] WITH NOCHECK
    ADD FOREIGN KEY ([WdrozenieID]) REFERENCES [dbo].[Wdrozenie] ([ID]);


GO
PRINT N'Checking existing data against newly created constraints';


GO
USE [$(DatabaseName)];


GO
CREATE TABLE [#__checkStatus] (
    id           INT            IDENTITY (1, 1) PRIMARY KEY CLUSTERED,
    [Schema]     NVARCHAR (256),
    [Table]      NVARCHAR (256),
    [Constraint] NVARCHAR (256)
);

SET NOCOUNT ON;

DECLARE tableconstraintnames CURSOR LOCAL FORWARD_ONLY
    FOR SELECT SCHEMA_NAME([schema_id]),
               OBJECT_NAME([parent_object_id]),
               [name],
               0
        FROM   [sys].[objects]
        WHERE  [parent_object_id] IN (OBJECT_ID(N'dbo.PowerBI_Raport'), OBJECT_ID(N'dbo.Slownik_Modul'), OBJECT_ID(N'dbo.Wdrozenie'), OBJECT_ID(N'dbo.Wdrozenie_Komentarz'), OBJECT_ID(N'dbo.Wdrozenie_Plik'), OBJECT_ID(N'dbo.Wdrozenie_Raport'))
               AND [type] IN (N'F', N'C')
                   AND [object_id] IN (SELECT [object_id]
                                       FROM   [sys].[check_constraints]
                                       WHERE  [is_not_trusted] <> 0
                                              AND [is_disabled] = 0
                                       UNION
                                       SELECT [object_id]
                                       FROM   [sys].[foreign_keys]
                                       WHERE  [is_not_trusted] <> 0
                                              AND [is_disabled] = 0);

DECLARE @schemaname AS NVARCHAR (256);

DECLARE @tablename AS NVARCHAR (256);

DECLARE @checkname AS NVARCHAR (256);

DECLARE @is_not_trusted AS INT;

DECLARE @statement AS NVARCHAR (1024);

BEGIN TRY
    OPEN tableconstraintnames;
    FETCH tableconstraintnames INTO @schemaname, @tablename, @checkname, @is_not_trusted;
    WHILE @@fetch_status = 0
        BEGIN
            PRINT N'Checking constraint: ' + @checkname + N' [' + @schemaname + N'].[' + @tablename + N']';
            SET @statement = N'ALTER TABLE [' + @schemaname + N'].[' + @tablename + N'] WITH ' + CASE @is_not_trusted WHEN 0 THEN N'CHECK' ELSE N'NOCHECK' END + N' CHECK CONSTRAINT [' + @checkname + N']';
            BEGIN TRY
                EXECUTE [sp_executesql] @statement;
            END TRY
            BEGIN CATCH
                INSERT  [#__checkStatus] ([Schema], [Table], [Constraint])
                VALUES                  (@schemaname, @tablename, @checkname);
            END CATCH
            FETCH tableconstraintnames INTO @schemaname, @tablename, @checkname, @is_not_trusted;
        END
END TRY
BEGIN CATCH
    PRINT ERROR_MESSAGE();
END CATCH

IF CURSOR_STATUS(N'LOCAL', N'tableconstraintnames') >= 0
    CLOSE tableconstraintnames;

IF CURSOR_STATUS(N'LOCAL', N'tableconstraintnames') = -1
    DEALLOCATE tableconstraintnames;

SELECT N'Constraint verification failed:' + [Schema] + N'.' + [Table] + N',' + [Constraint]
FROM   [#__checkStatus];

IF @@ROWCOUNT > 0
    BEGIN
        DROP TABLE [#__checkStatus];
        RAISERROR (N'An error occurred while verifying constraints', 16, 127);
    END

SET NOCOUNT OFF;

DROP TABLE [#__checkStatus];


GO
PRINT N'Update complete.';


GO
