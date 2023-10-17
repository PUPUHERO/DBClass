# Run PowerShell as administrator
$process = Start-Process powershell -Verb runAs -ArgumentList '-Command "& {Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString(''https://chocolatey.org/install.ps1''))}"' -PassThru
$process.WaitForExit()

# set environment variable
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
$env:ChocolateyInstall = [System.Environment]::GetEnvironmentVariable("ChocolateyInstall","Machine")
Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1
refreshenv