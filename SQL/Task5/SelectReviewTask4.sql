SELECT
    w.ID                                   AS WdrozenieID,
    w.Tytul                                AS Tytul,
    w.DataWdrozenia                        AS DataWdrozenia,
    w.Utworzono                            AS Utworzono,
    u.Login                                AS LoginUzytkownika,
    u.NazwaWyswietlana                     AS NazwaUzytkownika,
    ss.Nazwa                               AS Status,
    s.Nazwa                                AS System,
    m.Nazwa                                AS Modul,
    env.Nazwa                              AS Srodowisko,
    w.Uwagi                                AS Uwagi
FROM dbo.Wdrozenie w
LEFT JOIN dbo.Uzytkownik u ON w.Utworzyl = u.ID
LEFT JOIN dbo.Slownik_Status ss ON w.StatusID = ss.ID
LEFT JOIN dbo.Slownik_System s ON w.SystemID = s.ID
LEFT JOIN dbo.Slownik_Modul m ON w.ModulID = m.ID
LEFT JOIN dbo.Slownik_Srodowisko env ON w.SrodowiskoID = env.ID;


-------------
SELECT
    w.ID                                AS WdrozenieID,
    w.Tytul                             AS Tytul,
    k.ID                                AS KomentarzID,
    k.DataKomentarza                     AS DataKomentarza,
    k.Tresc                             AS TrescKomentarza,
    ku.Login                             AS AutorKomentarza_Login,
    ku.NazwaWyswietlana                  AS AutorKomentarza_Nazwa,
    p.ID                                AS PlikID,
    p.NazwaPliku                         AS NazwaPliku,
    p.SciezkaPliku                       AS SciezkaPliku,
    p.DataWgrania                        AS DataWgraniaPliku
FROM dbo.Wdrozenie w
LEFT JOIN dbo.Wdrozenie_Komentarz k ON w.ID = k.WdrozenieID
LEFT JOIN dbo.Uzytkownik ku ON k.Komentowal = ku.ID
LEFT JOIN dbo.Wdrozenie_Plik p ON w.ID = p.WdrozenieID
ORDER BY w.DataWdrozenia DESC, w.ID, k.DataKomentarza;

--------------------------------------------------------
SELECT
    r.ID                                 AS RaportID,
    r.Nazwa                              AS NazwaRaportu,
    r.Workspace                          AS Workspace,
    r.WlascicielID                       AS WlascicielID,
    w.ID                                 AS WdrozenieID,
    w.Tytul                              AS TytulWdrozenia,
    w.DataWdrozenia                      AS DataWdrozenia,
    ss.Nazwa                             AS Status,
    s.Nazwa                              AS System,
    m.Nazwa                              AS Modul,
    env.Nazwa                            AS Srodowisko
FROM dbo.PowerBI_Raport r
INNER JOIN dbo.Wdrozenie_Raport wr ON r.ID = wr.RaportID
INNER JOIN dbo.Wdrozenie w ON wr.WdrozenieID = w.ID
LEFT JOIN dbo.Slownik_Status ss ON w.StatusID = ss.ID
LEFT JOIN dbo.Slownik_System s ON w.SystemID = s.ID
LEFT JOIN dbo.Slownik_Modul m ON w.ModulID = m.ID
LEFT JOIN dbo.Slownik_Srodowisko env ON w.SrodowiskoID = env.ID
ORDER BY r.Nazwa, w.DataWdrozenia DESC;

