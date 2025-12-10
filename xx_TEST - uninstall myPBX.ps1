$foouninstallstring = Get-Itemproperty 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*' | Select-Object DisplayName, PSChildName | Where-Object { $_.DisplayName -match "innovaphone myPBX"}
$foologfile = 'c:\innovaUninstall.txt'

if (Test-Path -Path '\\jung.ch\dfs$\DIP$\Software\Innovaphone\myPBX\logs\') {
    $foologfile = "\\jung.ch\dfs$\DIP$\Software\Innovaphone\myPBX\logs\$env:COMPUTERNAME.txt"
}
.\msiexec.exe /x $foouninstallstring.PSChildName /l $foologfile
