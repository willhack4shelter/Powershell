$fooAppname = read-host 'Application Name'
$foo32bit = Get-Itemproperty 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*' | Select-Object DisplayName, DisplayVersion, UninstallString, PSChildName | Where-Object { $_.DisplayName -match "^*$fooAppname*"}
$foo64bit = Get-Itemproperty 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' | Select-Object DisplayName, DisplayVersion,  UninstallString, PSChildName | Where-Object { $_.DisplayName -match "^*$fooAppname*"}
write-host "32Bit:"
$foo32bit | ft
write-host "64Bit:"
$foo64bit | ft
