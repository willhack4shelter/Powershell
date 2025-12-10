$fooFile = "C:\Users\$env:UserName\.themis\themis42.properties"

if ((Get-Content $fooFile) -match "license.floating-server") {
    (Get-Content $fooFile) -replace 'license.floating-server=.*', 'license.floating-server=192.168.14.10\:16090' | Set-Content $fooFile
}
else {
     Add-Content $fooFile -Value 'license.floating-server=192.168.14.10\:16090' | Set-Content $fooFile
}

if ((Get-Content $fooFile) -match "license.type"){
    (Get-Content $fooFile) -replace 'license.type=.*', 'license.type=1' | Set-Content $fooFile
}
else {
     Add-Content $fooFile -Value 'license.type=1' | Set-Content $fooFile
}

if ((Get-Content $fooFile) -match "system.update.auto"){
    (Get-Content $fooFile) -replace 'system.update.auto=.*', 'system.update.auto=no' | Set-Content $fooFile
}
else {
     Add-Content $fooFile -Value 'system.update.auto=no' | Set-Content $fooFile
}

if ((Get-Content $fooFile) -match "system.update.source.selection"){
    (Get-Content $fooFile) -replace 'system.update.source.selection=.*', 'system.update.source.selection=1' | Set-Content $fooFile
}
else {
     Add-Content $fooFile -Value 'system.update.source.selection=1' | Set-Content $fooFile
}