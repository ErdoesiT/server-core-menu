$BasePath       = Split-Path -Parent $PSScriptRoot
$MenuItemFolder = "MenuItems"
$MenuItemPath   = Join-Path $BasePath $MenuItemFolder
$MenuItems      = Get-ChildItem $MenuItemPath | Where { $_.Name -match "^[1-9][0-9]?\) .+" }

$ErrorFlag      = $false

# Collect menu items
if ($MenuItems.Count -gt 0) {
    ForEach ($MenuItem In $MenuItems) {
        $OptionString  = $MenuItem.BaseName.Split(")")[0]
        $OptionInteger = [int]$OptionString
        
        $MenuItem | Add-Member -Name "OptionString"  -Value $OptionString  -MemberType NoteProperty
        $MenuItem | Add-Member -Name "OptionInteger" -Value $OptionInteger -MemberType NoteProperty
    }

    $MenuItems = $MenuItems | Sort -Property OptionInteger
} else {
    Write-Host "No files matching pattern 'n) ...' or 'nn) ...' found in folder '$MenuItemPath'."
    $ErrorFlag = $true
}

if ($ErrorFlag) {
    Write-Host
    Write-Host "Errors occured during initialization."
    Write-Host "[Press enter to exit]"
    Read-Host
    return
}

# Show Menu
While ($true) {
    Clear-Host

    Write-Host $env:computername
    Write-Host "================================================================================"
    Write-Host

    ForEach ($MenuItem In $MenuItems) {
        Write-Host $MenuItem.BaseName
    }

    Write-Host
    Write-Host

    $OptionString = Read-Host -Prompt "Enter number to select an option"    
    $MenuItem     = $MenuItems | Where { $_.OptionString -eq $OptionString }
    
    if ($MenuItem -ne $null) {
        if ($MenuItem[0].Extension.ToUpperInvariant() -eq ".PS1") {
            Invoke-Expression ("& `"" + $MenuItem[0].FullName + "`"")
        } else {
            Invoke-Item $MenuItem[0].FullName
        }
    }
}

