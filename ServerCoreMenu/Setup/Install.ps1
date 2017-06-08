$BasePath         = Split-Path -Parent $PSScriptRoot
$ScriptFolder     = "Script"
$ScriptName       = "Main.ps1"
$ScriptPath       = Join-Path $BasePath $ScriptFolder
$ScriptPath       = Join-Path $ScriptPath $ScriptName
$AutostartCommand = "cmd.exe /c start powershell -noexit -command `"& " + $ScriptPath + "`""

New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\run -Name "ServerCoreMenu" -Value $AutostartCommand -Type string
