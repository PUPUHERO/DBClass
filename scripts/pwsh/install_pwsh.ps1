# Check if PowerShell Core is already installed
if (-not (Get-Command pwsh -ErrorAction SilentlyContinue)) {
    # Download the PowerShell Core MSI installer
    $url = "https://github.com/PowerShell/PowerShell/releases/download/v7.3.8/PowerShell-7.3.8-win-x64.msi"
    $output = "$env:TEMP\PowerShell-7.3.8-win-x64.msi"
    Invoke-WebRequest -Uri $url -OutFile $output

    # Install PowerShell Core
    Start-Process -FilePath msiexec.exe -ArgumentList "/i `"$output`" " -Wait
}
# reload the environment variables
refreshenv

