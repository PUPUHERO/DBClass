# install choco
$scriptPath = ".\choco\install_choco.ps1 "
$process = Start-Process -FilePath "powershell.exe" -ArgumentList "-File $scriptPath" -PassThru
$process.WaitForExit()

.\pwsh\install_pwsh_choco.ps1
Start-Process regedit.exe -ArgumentList "/s pwsh\pwsh_open_here.reg" -Wait
.\mysql\install_mysql_choco.ps1
.\mysql\set_mysql.ps1

pause