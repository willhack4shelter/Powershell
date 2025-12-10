Start-Transcript -Path "C:\temp\SophosServiceReg.txt"
Get-Service -Name 'Sophos Anti-Virus' | Set-Service -startuptype Disabled -Status Stopped
Set-ItemProperty 'HKLM:\SOFTWARE\WOW6432Node\Sophos\SavService\TamperProtection\Enabled' -Value 0
