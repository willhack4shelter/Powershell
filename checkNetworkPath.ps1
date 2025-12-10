[int]$fooCount = 90000
$fooPath = read-host "Test Pfad"
while ($fooCount -gt 0){
    if (Test-Path -Path $fooPath){
        $fooCount --
        Start-Sleep -Seconds 1
    }
    else {
        $_ = Get-Date -UFormat "%H:%M:%S"
        echo "Error um: '$_'"
        Start-Sleep -Seconds 10 }
}
$_ = Get-Date -UFormat "%H:%M:%S"
echo "Ende um: '$_'"