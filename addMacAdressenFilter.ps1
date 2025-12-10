$fooMacAdr = Get-NetAdapter | where {$_.Name -Match 'WLAN'}
$fooMac = $fooMacAdr.MacAddress
$fooValue = "$env:COMPUTERNAME`t$fooMac"
Add-Content '\\jung.ch\dfs$\DIP$\Software\Microsoft\Surface\MacAdressen.txt' -Value $fooValue