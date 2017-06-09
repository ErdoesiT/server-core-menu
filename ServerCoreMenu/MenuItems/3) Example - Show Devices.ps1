cmd.exe /c start powershell -command "Get-WmiObject Win32_PNPEntity | Select Caption | Out-Host; Write-Host `"Press [Enter] to close this window`"; Read-Host"
