------------------------------------------------------
-- WDROŻENIA (100 rekordów)
------------------------------------------------------

DECLARE @i INT = 1;

WHILE @i <= 100
BEGIN
    INSERT INTO Wdrozenie (
        ID, Tytul, DataWdrozenia, Utworzono, Utworzyl,
        StatusID, SystemID, ModulID, SrodowiskoID, Uwagi
    )
    SELECT 
        NEWID(),
        CONCAT('Wdrożenie numer ', @i),
        DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 180, GETDATE()),
        GETDATE(),
        (SELECT TOP 1 ID FROM Uzytkownik ORDER BY NEWID()),
        (SELECT TOP 1 ID FROM Slownik_Status ORDER BY NEWID()),
        (SELECT TOP 1 ID FROM Slownik_System ORDER BY NEWID()),
        (SELECT TOP 1 ID FROM Slownik_Modul ORDER BY NEWID()),
        (SELECT TOP 1 ID FROM Slownik_Srodowisko ORDER BY NEWID()),
        'Automatycznie wygenerowane dane testowe';

    SET @i = @i + 1;
END;
