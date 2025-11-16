------------------------------------------------------
-- UŻYTKOWNICY
------------------------------------------------------
DECLARE @U1 UNIQUEIDENTIFIER = NEWID();
DECLARE @U2 UNIQUEIDENTIFIER = NEWID();
DECLARE @U3 UNIQUEIDENTIFIER = NEWID();
DECLARE @U4 UNIQUEIDENTIFIER = NEWID();
DECLARE @U5 UNIQUEIDENTIFIER = NEWID();
DECLARE @U6 UNIQUEIDENTIFIER = NEWID();
DECLARE @U7 UNIQUEIDENTIFIER = NEWID();
DECLARE @U8 UNIQUEIDENTIFIER = NEWID();
DECLARE @U9 UNIQUEIDENTIFIER = NEWID();
DECLARE @U10 UNIQUEIDENTIFIER = NEWID();

INSERT INTO Uzytkownik (ID, Login, NazwaWyswietlana, Email) VALUES
(@U1, 'admin', 'Administrator', 'admin@firma.com'),
(@U2, 't.kowalski', 'Tomasz Kowalski', 't.kowalski@firma.com'),
(@U3, 'a.nowak', 'Anna Nowak', 'a.nowak@firma.com'),
(@U4, 'm.zielinski', 'Marek Zieliński', 'm.zielinski@firma.com'),
(@U5, 'j.wisniewska', 'Joanna Wiśniewska', 'j.wisniewska@firma.com'),
(@U6, 'p.baran', 'Piotr Baran', 'p.baran@firma.com'),
(@U7, 'k.wozniak', 'Karolina Woźniak', 'k.wozniak@firma.com'),
(@U8, 'r.lewandowski', 'Robert Lewandowski', 'r.lewandowski@firma.com'),
(@U9, 'm.krawczyk', 'Michał Krawczyk', 'm.krawczyk@firma.com'),
(@U10, 'k.szymanski', 'Kamil Szymański', 'k.szymanski@firma.com');
