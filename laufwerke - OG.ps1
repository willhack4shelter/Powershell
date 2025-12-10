net use * /delete /y | Out-Null

$User = $env:USERDOMAIN + "\" + $env:USERNAME
$Pass = Read-Host -AsSecureString "Passwort für $env:USERNAME"

$BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($Pass)
$PlainPassword = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)

net use G: \\jung.ch\dfs$\GL$ $PlainPassword /USER:$User /persistent:no
net use H: \\jung.ch\dfs$\BFB$ $PlainPassword /USER:$User /persistent:no
net use P: \\jung.ch\dfs$\Netprog $PlainPassword /USER:$User /persistent:no
net use S: \\jung.ch\dfs$\Groups $PlainPassword /USER:$User /persistent:no

if (-not (Test-Path "G:\00 ADMIN\")) {
        net use G: /delete | Out-Null      
    } else {
        return $false
    }