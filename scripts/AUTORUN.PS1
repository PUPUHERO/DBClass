.\choco\install_choco.ps1 -Wait
.\pwsh\install_pwsh_choco.ps1 -Wait
.\Start-Process regedit.exe -ArgumentList "/s pwsh\pwsh_open_here.reg" -Wait
.\mysql\install_mysql_choco.ps1 -Wait
.\mysql\set_mysql.ps1 -Wait

pause