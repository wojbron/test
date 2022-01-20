Write-Host "installing PowerShell Core: start"
Invoke-Expression "& { $(Invoke-RestMethod https://aka.ms/install-powershell.ps1) } -UseMSI -Quiet"
Write-Host "installing PowerShell Core: end"

Write-Host "Installing Nuget Package Provider: start"
Install-PackageProvider -Name NuGet -Force
Write-Host "Installing Nuget Package Provider: end"

Write-Host "Installing SqlServer module: start"
Install-Module -Name SqlServer -Force -AllowClobber
Write-Host "Installing SqlServer module: end"

Write-Host "Installing Azure module: start"
Install-Module -Name Az -Force
Write-Host "Installing Azure module: end"
