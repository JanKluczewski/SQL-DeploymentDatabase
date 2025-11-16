------------------------------------------------------
-- PLIKI WDROŻENIOWE
------------------------------------------------------

DECLARE @p INT = 1;

WHILE @p <= 150
BEGIN
    INSERT INTO Wdrozenie_Plik (
        ID, WdrozenieID, NazwaPliku, SciezkaPliku, DataWgrania
    )
    SELECT
        NEWID(),
        (SELECT TOP 1 ID FROM Wdrozenie ORDER BY NEWID()),
        CONCAT('plik_', @p, '.txt'),
        CONCAT('/repo/plik_', @p, '.txt'),
        GETDATE();

    SET @p = @p + 1;
END;
