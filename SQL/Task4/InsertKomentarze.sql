------------------------------------------------------
-- KOMENTARZE (200)
------------------------------------------------------

DECLARE @k INT = 1;

WHILE @k <= 200
BEGIN
    INSERT INTO Wdrozenie_Komentarz (
        ID, WdrozenieID, DataKomentarza, Komentowal, Tresc
    )
    SELECT 
        NEWID(),
        (SELECT TOP 1 ID FROM Wdrozenie ORDER BY NEWID()),
        DATEADD(MINUTE, -@k, GETDATE()),
        (SELECT TOP 1 ID FROM Uzytkownik ORDER BY NEWID()),
        CONCAT('Komentarz testowy nr ', @k);

    SET @k = @k + 1;
END;
