------------------------------------------------------
-- POWIĄZANIA WDROŻEŃ Z RAPORTAMI (80)
------------------------------------------------------

DECLARE @wr INT = 1;

WHILE @wr <= 80
BEGIN
    INSERT INTO Wdrozenie_Raport (
        ID, WdrozenieID, RaportID
    )
    SELECT 
        NEWID(),
        (SELECT TOP 1 ID FROM Wdrozenie ORDER BY NEWID()),
        (SELECT TOP 1 ID FROM PowerBI_Raport ORDER BY NEWID());

    SET @wr = @wr + 1;
END;
