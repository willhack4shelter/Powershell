##########################
# ██▓███   ██▀███  ▓█████# 
#▓██░  ██▒▓██ ▒ ██▒▓█   ▒# 
#▓██░ ██▓▒▓██ ░▄█ ▒▒███ ░#  
#▒██▄█▓▒ ▒▒██▀▀█▄  ▒▓█  ▄# 
#▒██▒ ░  ░░██▓ ▒██▒░▒████#
#▒▓▒░ ░  ░░ ▒▓ ░▒▓░░░ ▒░ # 
#░▒ ░       ░▒ ░ ▒░ ░ ░  # 
#░░         ░░   ░    ░  # 
#░Custom Prom░t pre 20░20#
#░Update      26.11.20░20#
##########################

$host.UI.RawUI.WindowTitle ="ADM-pre@tHeM4triX!"
set-location c:\
Clear-Host
Write-Host "$($env:COMPUTERNAME) is ready to serve $env:UserDomain\$env:UserName with Super-Kuh-Kraeften"

################
# Aliases
################

################
# Functions
################

function fuUninstallString { #Get 32 and 64 Uninstall strings
	$fooAppname = read-host 'Application Name'
	$foo32bit = Get-Itemproperty 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*' | Select-Object DisplayName, DisplayVersion, UninstallString, PSChildName | Where-Object { $_.DisplayName -match "^*$fooAppname*"}
	$foo64bit = Get-Itemproperty 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' | Select-Object DisplayName, DisplayVersion,  UninstallString, PSChildName | Where-Object { $_.DisplayName -match "^*$fooAppname*"}
	write-host "`n-----------"
	write-host "32Bit:" -ForegroundColor Red -nonewline; $foo32bit | ft
	write-host "`n-----------"
	write-host "64Bit:" -ForegroundColor Red -nonewline; $foo64bit | ft
}

function fuNewUser { #Creates the txt files in _GruppenProgVert
	$fooUser = read-host "Kurzzeichen des Benutzers `n"
	$fooNummer = read-host "21 = OrgaCH / 22 = TragCH / 23 = BranCH / 24 = PhysCH `n51 = OrgaDE / 52 = TragDE / 53 = BranDE / 54 = PhysDE `n"

	if ($fooNummer -eq 21) {
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\Alle\$fooUser.txt
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\ORGAN\$fooUser.txt
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\ORGANCH\$fooUser.txt
	}
	elseif ($fooNummer -eq 22){
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\Alle\$fooUser.txt
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\HOLZ\$fooUser.txt
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\INGECH\$fooUser.txt
	}
	elseif ($fooNummer -eq 23){
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\Alle\$fooUser.txt
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\HOLZ\$fooUser.txt
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\INGECH\$fooUser.txt
	}
	elseif ($fooNummer -eq 24){
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\Alle\$fooUser.txt
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\PHYS\$fooUser.txt
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\PHYSCH\$fooUser.txt
	}
	elseif ($fooNummer -eq 51){
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\Alle\$fooUser.txt
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\DEUT\$fooUser.txt
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\ORGANDE\$fooUser.txt
	}
	elseif ($fooNummer -eq 52){
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\Alle\$fooUser.txt
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\DEUT\$fooUser.txt
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\INGEDE\$fooUser.txt
	}
	elseif ($fooNummer -eq 53){
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\Alle\$fooUser.txt
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\DEUT\$fooUser.txt
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\INGEDE\$fooUser.txt
	}
	elseif ($fooNummer -eq 54){
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\Alle\$fooUser.txt
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\DEUT\$fooUser.txt
		ni \\jung.ch\dfs$\install$\_GruppenProgVert\PHYSDE\$fooUser.txt
	}
}

function fuDownloadLesosai{ #Lesosai downlaod via py script
	python '\\jung.ch\dfs$\users$\pre\Documents\_scripts\lesosaiDownloader.py'
}

function fuTestNetworkPath { #Test Nework Path 
	[int]$fooCount = 300000
	$fooPath = read-host "Test Pfad"
	while ($fooCount -gt 0){
		if (Test-Path -Path $fooPath){
			$fooCount --
			Start-Sleep -Seconds 1
		}
		else {
			$_ = Get-Date -UFormat "%H:%M:%S"
			echo "Error um: '$_'"
			Start-Sleep -Seconds 10 
		}
	}
	$_ = Get-Date -UFormat "%H:%M:%S"
	echo "Ende um: '$_'"
}

function fuTestNetworkConnection { #Test Network Conection
	$fooAddress = Read-Host 'Addresse'
	[int]$fooCount = 300000
	while ($fooCount -gt 0){
		if (Test-Connection $fooAddress -Quiet -Count 1) {
			$fooCount --
			Start-Sleep -seconds 1
		}
		else {
            $_ = Get-Date -UFormat "%H:%M:%S"
            echo "Error um: '$_'"
			Start-Sleep -Seconds 1
        }
	}
	$_ = Get-Date -UFormat "%H:%M:%S"
	echo "Ende um: '$_'"
}

function fuS-I-D { #Get SID of specific user
	$fooUserAccount = read-host 'UserAccount'
	Get-WmiObject win32_useraccount | where Name -match $fooUserAccount
}

function fuSetTitle{ #Set a new title
	$fooTitle = read-host 'new title'
	$host.ui.RawUI.WindowTitle = $fooTitle + ' - ' + $host.ui.RawUI.WindowTitle
}

function fuBackupProfile { #Copy Profile 
	copy $Profile \\jung.ch\dfs$\users$\pre\Documents\_scripts
}

function fuLoadBackupProfile { #Copy BackupProfile $Profile
	copy \\jung.ch\dfs$\users$\pre\Documents\_scripts\Microsoft.PowerShell_profile.ps1 $Profile
}

function fuDisplayRC { #Display the message of the returncode
	$fooRC = read-host 'ReturnCode'
		net helpmsg $fooRC
}

function fuUpdatePS { #Update PowerShell Core 6
	iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI"
}

function fuScanIpRange {#Scan IP Range
	$fooIp = read-host 'IP zB: 192.168.1'
	1..254 | ForEach-Object {Test-Connection -ComputerName "$fooIp.$_" -Count 1 -ErrorAction SilentlyContinue}
}

function fuScanIpWithResolve { #Scan IP with Address Resolver
$fooIp = read-host 'IP zB: 192.168.1'
1..254 | ForEach-Object {Get-WmiObject Win32_PingStatus -Filter "Address='$fooIp.$_' and Timeout=200 and ResolveAddressNames='True' and StatusCode=0" | select ProtocolAddress*}
}

function fuSortMac { #sort dip$ macadressen.txt
	cat \\jung.ch\dfs$\DIP$\Software\Microsoft\Surface\MacAdressen.txt | sort -u | sc \\jung.ch\dfs$\DIP$\Software\Microsoft\Surface\MacAdressen.txt
}

function fuDecryptBase64 { #Decrypt Base 64 Encryption
	$fooEncodedText = read-host "Enter Text"
	$fooDecodedText = [System.Text.Encoding]::utf8.GetString([System.Convert]::FromBase64String($fooEncodedText))
	$fooDecodedText
}

function fuIDAICErestart { #Restart hasplm Service on junw10ds10
	Restart-Service -InputObject $(Get-Service -ComputerName jungw10ds10 -Name hasplms)
}

function pingAugsburgXerox {
	ping 192.168.4.151 -t
}

function pingRainIcon {
	ping 172.16.12.86 -t
}

function pingRainXeroxNord {
	ping 192.168.12.156 -t
}

function pingRainXeroxSued {
	ping 192.168.12.152 -t
}

function pingSargansIcon {
	ping 83.144.238.171 -t
}

function pingSargansXerox {
	ping 192.168.7.151 -t
}

function pingRemagenFirewall {
	ping 87.129.193.130 -t
}

function pingRemagenSwitch {
	ping 192.168.0.6 -t
}

function pingRemagenIcon {
	ping 192.168.0.86 -t
}

function pingRemagenXerox {
	ping 192.168.0.43 -t
}

function pingThunIcon {
	ping 213.200.254.99 -t
}

function pingThunXerox {
	ping 192.168.6.151 -t
}

function pintThunSwitch {
	ping 192.168.6.5 -t
}
	