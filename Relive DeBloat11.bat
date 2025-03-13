::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDZVWA2RNWSGIrAP4/z0/9aLrUoSGfA6dIbN37CLIuwc61G1JN5+nzRTm8Rs
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDZVWA2RNWSGIrAP4/z0/9a1p0EUQud/XIr51ruPNLFCpED8cPY=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983

@echo off

:menu
cls
echo =============================
echo   Wybierz przegladarke: (wpisz numer)
echo =============================
echo [0] Pomin przegladarke
echo [1] Firefox
echo [2] Google Chrome (wkrotce)
echo [3] Brave
echo [4] Opera GX (nie polecamy, wkrotce)
echo [5] Wyjscie
echo =============================
echo UWAGA! Beda wyskakiwac rozne programy i bedzie migac ekran
set /p choice=Twoj wybor: 

if "%choice%"=="0" goto debloat
if "%choice%"=="1" goto firefox
if "%choice%"=="2" goto chrome
if "%choice%"=="3" goto brave
if "%choice%"=="4" goto operagx
if "%choice%"=="5" goto wyjscie

echo Nieprawidlowy wybor, sprobuj ponownie.
pause
goto menu

:firefox
echo Wybrales Firefox.
:: Pobieranie instalatora Firefoksa
powershell -Command "Invoke-WebRequest -Uri 'https://download.mozilla.org/?product=firefox-stub&os=win&lang=pl' -OutFile '%temp%\FirefoxInstaller.exe'"

:: Uruchamianie instalatora
start "" "%temp%\FirefoxInstaller.exe"

echo Instalator Firefoksa zostal pobrany i uruchomiony!
goto debloat

:chrome
echo Wkrotce
goto menu

:brave
echo Wybrales Brave
@echo off

:: Pobieranie instalatora Brave
powershell -Command "Invoke-WebRequest -Uri 'https://referrals.brave.com/latest/BraveBrowserSetup-BRV010.exe' -OutFile '%temp%\BraveInstaller.exe'"

:: Uruchamianie instalatora
start "" "%temp%\BraveInstaller.exe"
goto debloat

:operagx
echo Wybrales Opera GX
@echo off
echo Wkrotce
goto menu

:koniec
exit

:debloat

:: Pobieranie debloatu
powershell -Command "Invoke-WebRequest -Uri 'https://reliveteam.eu/relivedebloat11/debloat.exe' -OutFile '%temp%\debloat.exe'"

:: Uruchamianie debloatu
start "" "%temp%\debloat.exe"
exit
