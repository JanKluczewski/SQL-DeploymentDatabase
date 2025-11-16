# README – Struktura bazy danych dla systemu zarządzania wdrożeniami Power BI

Poniższy skrypt SQL tworzy kompletną strukturę bazy danych służącej do ewidencji i obsługi wdrożeń rozwiązań oraz raportów Power BI.  
Całość została zaprojektowana z myślą o skalowalności, czytelności oraz pełnym odzwierciedleniu procesu wdrożeniowego.

---

## Co zawiera skrypt?

✔ Wszystkie nazwy tabel i kolumn są w języku polskim  
✔ 10 tabel w pełni powiązanych relacjami  
✔ 3 tabele słownikowe:  
- **Slownik_Status**  
- **Slownik_System**  
- **Slownik_Modul**  
Dodatkowo: **Slownik_Srodowisko**

✔ Pełne relacje kluczy obcych (FK) pomiędzy tabelami  

✔ Główna tabela **Wdrozenie** zawiera kluczowe informacje:
- kiedy – **DataWdrozenia**
- kto – **Utworzyl** (powiązanie z tabelą `Uzytkownik`)
- system – **SystemID**
- moduł – **ModulID**
- środowisko – **SrodowiskoID**
- status – **StatusID**
- uwagi – **Uwagi**

✔ Obsługa powiązań z raportami Power BI poprzez tabele:
- **PowerBI_Raport**
- **Wdrozenie_Raport**

✔ Obsługa dodatkowych danych wdrożeniowych:
- **Wdrozenie_Komentarz** – komentarze do wdrożeń
- **Wdrozenie_Plik** – pliki i artefakty wdrożeniowe

---

Jeżeli potrzebujesz dodatkowych elementów (diagram ERD, przykładowe dane, migracje, wersję pod PostgreSQL), daj znać.
