------------------------------------------------------
-- SŁOWNIK STATUSÓW (5)
------------------------------------------------------
INSERT INTO Slownik_Status (ID, Nazwa, Opis) VALUES
(NEWID(), 'Nowe', 'Nowe wdrożenie'),
(NEWID(), 'W trakcie', 'Wdrożenie jest realizowane'),
(NEWID(), 'Zakończone', 'Wdrożenie zostało wykonane'),
(NEWID(), 'Błąd', 'Wystąpił błąd podczas wdrożenia'),
(NEWID(), 'Odrzucone', 'Wdrożenie zostało odrzucone');

------------------------------------------------------
-- SŁOWNIK SYSTEMÓW (5)
------------------------------------------------------
DECLARE @System1 UNIQUEIDENTIFIER = NEWID();
DECLARE @System2 UNIQUEIDENTIFIER = NEWID();
DECLARE @System3 UNIQUEIDENTIFIER = NEWID();
DECLARE @System4 UNIQUEIDENTIFIER = NEWID();
DECLARE @System5 UNIQUEIDENTIFIER = NEWID();

INSERT INTO Slownik_System (ID, Nazwa, Opis) VALUES
(@System1, 'ERP', 'System ERP'),
(@System2, 'CRM', 'System CRM'),
(@System3, 'WMS', 'Warehouse Management System'),
(@System4, 'PowerBI', 'Raporty Power BI'),
(@System5, 'HRMS', 'System kadrowo-płacowy');

------------------------------------------------------
-- SŁOWNIK MODUŁÓW (10)
------------------------------------------------------
INSERT INTO Slownik_Modul (ID, SystemID, Nazwa, Opis) VALUES
(NEWID(), @System1, 'Finanse', 'Moduł finansowy'),
(NEWID(), @System1, 'Księgowość', 'Moduł księgowy'),
(NEWID(), @System2, 'Sprzedaż', 'Sprzedaż w CRM'),
(NEWID(), @System2, 'Lead Management', 'Leady CRM'),
(NEWID(), @System3, 'Magazyn przyjęcia', 'Przyjęcia towarów'),
(NEWID(), @System3, 'Magazyn wydania', 'Wydania towarów'),
(NEWID(), @System4, 'Dashboard Sales', 'Dashboard sprzedażowy'),
(NEWID(), @System4, 'Dashboard Operacje', 'Dashboard operacyjny'),
(NEWID(), @System5, 'Kadry', 'Kadry pracownicze'),
(NEWID(), @System5, 'Płace', 'Płace i wypłaty');

------------------------------------------------------
-- SŁOWNIK ŚRODOWISK (5)
------------------------------------------------------
INSERT INTO Slownik_Srodowisko (ID, Nazwa) VALUES
(NEWID(), 'DEV'),
(NEWID(), 'TST'),
(NEWID(), 'UAT'),
(NEWID(), 'PRE-PROD'),
(NEWID(), 'PROD');
