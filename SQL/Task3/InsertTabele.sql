-- ============================================
--  STRUKTURA BAZY DANYCH 
--  Wszystkie nazwy tabel i kolumn po polsku
-- Autor: Jan Kluczewski
-- Data: 2025-11-16
-- ============================================

-- ============================================
-- 1. Tabele słownikowe
-- ============================================

CREATE TABLE Slownik_Status (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
    Nazwa NVARCHAR(100) NOT NULL,
    Opis NVARCHAR(255),
    PRIMARY KEY (ID)
);

CREATE TABLE Slownik_System (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
    Nazwa NVARCHAR(100) NOT NULL,
    Opis NVARCHAR(255),
    PRIMARY KEY (ID)
);

CREATE TABLE Slownik_Modul (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
    SystemID UNIQUEIDENTIFIER NOT NULL,
    Nazwa NVARCHAR(100) NOT NULL,
    Opis NVARCHAR(255),
    PRIMARY KEY (ID),
    FOREIGN KEY (SystemID) REFERENCES Slownik_System(ID)
);

CREATE TABLE Slownik_Srodowisko (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
    Nazwa NVARCHAR(50) NOT NULL,
    PRIMARY KEY (ID)
);

-- ============================================
-- 2. Tabela użytkowników
-- ============================================

CREATE TABLE Uzytkownik (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
    Login NVARCHAR(100) NOT NULL,
    NazwaWyswietlana NVARCHAR(150),
    Email NVARCHAR(150),
    PRIMARY KEY (ID)
);

-- ============================================
-- 3. Główna tabela: Wdrożenia
-- ============================================

CREATE TABLE Wdrozenie (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
    Tytul NVARCHAR(200) NOT NULL,
    DataWdrozenia DATETIME2 NOT NULL,
    Utworzono DATETIME2 NOT NULL DEFAULT GETDATE(),
    Utworzyl UNIQUEIDENTIFIER NOT NULL,
    StatusID UNIQUEIDENTIFIER NOT NULL,
    SystemID UNIQUEIDENTIFIER NOT NULL,
    ModulID UNIQUEIDENTIFIER NOT NULL,
    SrodowiskoID UNIQUEIDENTIFIER NOT NULL,
    Uwagi NVARCHAR(MAX),

    PRIMARY KEY (ID),

    FOREIGN KEY (Utworzyl) REFERENCES Uzytkownik(ID),
    FOREIGN KEY (StatusID) REFERENCES Slownik_Status(ID),
    FOREIGN KEY (SystemID) REFERENCES Slownik_System(ID),
    FOREIGN KEY (ModulID) REFERENCES Slownik_Modul(ID),
    FOREIGN KEY (SrodowiskoID) REFERENCES Slownik_Srodowisko(ID)
);

-- ============================================
-- 4. Komentarze do wdrożeń
-- ============================================

CREATE TABLE Wdrozenie_Komentarz (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
    WdrozenieID UNIQUEIDENTIFIER NOT NULL,
    DataKomentarza DATETIME2 NOT NULL DEFAULT GETDATE(),
    Komentowal UNIQUEIDENTIFIER NOT NULL,
    Tresc NVARCHAR(MAX) NOT NULL,

    PRIMARY KEY (ID),

    FOREIGN KEY (WdrozenieID) REFERENCES Wdrozenie(ID),
    FOREIGN KEY (Komentowal) REFERENCES Uzytkownik(ID)
);

-- ============================================
-- 5. Pliki/artefakty wdrożeniowe
-- ============================================

CREATE TABLE Wdrozenie_Plik (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
    WdrozenieID UNIQUEIDENTIFIER NOT NULL,
    NazwaPliku NVARCHAR(255) NOT NULL,
    SciezkaPliku NVARCHAR(500) NOT NULL,
    DataWgrania DATETIME2 NOT NULL DEFAULT GETDATE(),

    PRIMARY KEY (ID),

    FOREIGN KEY (WdrozenieID) REFERENCES Wdrozenie(ID)
);

-- ============================================
-- 6. Raporty Power BI
-- ============================================

CREATE TABLE PowerBI_Raport (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
    Nazwa NVARCHAR(200) NOT NULL,
    Workspace NVARCHAR(200),
    WlascicielID UNIQUEIDENTIFIER,

    PRIMARY KEY (ID),

    FOREIGN KEY (WlascicielID) REFERENCES Uzytkownik(ID)
);

-- ============================================
-- 7. Powiązanie wdrożeń z raportami Power BI
-- ============================================

CREATE TABLE Wdrozenie_Raport (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
    WdrozenieID UNIQUEIDENTIFIER NOT NULL,
    RaportID UNIQUEIDENTIFIER NOT NULL,

    PRIMARY KEY (ID),

    FOREIGN KEY (WdrozenieID) REFERENCES Wdrozenie(ID),
    FOREIGN KEY (RaportID) REFERENCES PowerBI_Raport(ID)
);

