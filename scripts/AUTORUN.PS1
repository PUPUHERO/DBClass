.\choco\install_choco.ps1
.\pwsh\install_pwsh_choco.ps1
.\Start-Process regedit.exe -ArgumentList "/s pwsh\pwsh_open_here.reg" -Wait
.\mysql\install_mysql_choco.ps1
.\mysql\set_mysql.ps1

pause