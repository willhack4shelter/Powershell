#$appname = read-host "Enter your program name"
Start-Transcript -Path "\\jung.ch\dfs$\install$\_Programmverteilung\everUninstallLog\uninstall_$env:computername.log"
$appname = 'Evernote'
$64bit = get-itemproperty 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*' | Select-Object DisplayName, DisplayVersion, UninstallString, PSChildName | Where-Object { $_.DisplayName -match "^*$appname*"}
$uStringEver = $64bit.PSChildName
#$64bit.UninstallString -replace 'msiexec.exe /i','msiexec.exe /x'
#Set-Location C:\Windows\System32
#cmd c/ $64bit.UninstallString /norestart
& msiexec.exe /x $uStringEver /quiet /norestart