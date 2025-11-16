# Uruchamianie Microsoft SQL Server w Podman z automatycznym restartem

Poniższa instrukcja pozwala uruchomić kontener z Microsoft SQL Server przy użyciu Podmana, tak aby baza danych automatycznie startowała po każdym restarcie serwera.  
Konfiguracja wykorzystuje flagę `--restart=always`, dzięki czemu nie jest wymagane tworzenie jednostek systemd.

---

## Polecenie uruchamiające kontener MSSQL z auto-restartem
podman run -d \
  --name mssql \
  --restart=always \
  -e "ACCEPT_EULA=Y" \
  -e "MSSQL_SA_PASSWORD=YourStrong!Passw0rd" \
  -p 1433:1433 \
  -v mssql_data:/var/opt/mssql \
  mcr.microsoft.com/mssql/server:2022-latest


Parametry kontenera

--restart=always – kontener jest automatycznie uruchamiany po restarcie systemu

--name mssql – nazwa kontenera

ACCEPT_EULA=Y – akceptacja licencji Microsoft

MSSQL_SA_PASSWORD – hasło do użytkownika sa

-p 1433:1433 – udostępnienie portu SQL Server

-v mssql_data:/var/opt/mssql – wolumen na trwałe dane

mcr.microsoft.com/mssql/server:2022-latest – oficjalny obraz SQL Server 2022