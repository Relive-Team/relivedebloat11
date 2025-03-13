& ([scriptblock]::Create((irm "https://debloat.raphi.re/"))) -RunDefaults -Silent
Invoke-WebRequest -Uri 'https://reliveteam.eu/relivedebloat11/tapetairestart.exe' -OutFile '%temp%\tapetairestart.exe'
start "" "%temp%\tapetairestart.exe"