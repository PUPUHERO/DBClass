
# 檢查是否有管理員權限
$isAdmin = [bool](([System.Security.Principal.WindowsIdentity]::GetCurrent()).groups -match "S-1-5-32-544")

if (!$isAdmin) {
    Write-Host "You need to run this script as an administrator."
    pause
    exit
}

# install choco
.\choco\install_choco.ps1

# install powershell and set powershell7 in context menu
.\pwsh\install_pwsh_choco.ps1
Start-Process regedit.exe -ArgumentList "/s pwsh\pwsh_open_here.reg" -Wait

# install mysql
.\mysql\install_mysql_choco.ps1
.\mysql\set_mysql.ps1

pause