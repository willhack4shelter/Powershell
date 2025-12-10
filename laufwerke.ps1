net use * /delete /y | Out-Null

$User = $env:USERDOMAIN + "\" + $env:USERNAME

function Check-Password {
    param (
        [string]$Password
    )
    $result = net use Z: \\jung.ch\dfs$\BFB$ $Password /USER:$User /persistent:no 2>&1
    if ($LASTEXITCODE -eq 0) {
        net use Z: /delete | Out-Null
        return $true
    } else {
        return $false
    }
}

$connectionSuccessful = $false
while (-not $connectionSuccessful) {
    $Pass = Read-Host -AsSecureString "Passwort für $env:USERNAME"

    $BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($Pass)
    $PlainPassword = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)

    $connectionSuccessful = Check-Password $PlainPassword

    if (-not $connectionSuccessful) {
        Write-Host "$Error[0]"
    }
}

net use G: \\jung.ch\dfs$\GL$ $PlainPassword /USER:$User /persistent:no
net use H: \\jung.ch\dfs$\BFB$ $PlainPassword /USER:$User /persistent:no
net use P: \\jung.ch\dfs$\Netprog $PlainPassword /USER:$User /persistent:no
net use S: \\jung.ch\dfs$\Groups $PlainPassword /USER:$User /persistent:no

if (-not (Test-Path "G:\00 ADMIN\")) {
    net use G: /delete | Out-Null      
    } else {
    Write-Host "Laufwerk G: erfolgreich verbunden."
    }