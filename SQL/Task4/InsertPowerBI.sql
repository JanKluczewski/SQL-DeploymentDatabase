------------------------------------------------------
-- POWER BI RAPORTY
------------------------------------------------------

DECLARE @r INT = 1;

WHILE @r <= 30
BEGIN
    INSERT INTO PowerBI_Raport (
        ID, Nazwa, Workspace, WlascicielID
    )
    SELECT
        NEWID(),
        CONCAT('Raport Power BI #', @r),
        'Dzial_Analiz',
        (SELECT TOP 1 ID FROM Uzytkownik ORDER BY NEWID());

    SET @r = @r + 1;
END;
