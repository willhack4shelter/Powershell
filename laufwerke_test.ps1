# Netzlaufwerke entfernen
$drives = net use
foreach ($line in $drives) {
    if ($line -match "([A-Z]:)") {
        $driveLetter = $matches[1]
        net use $driveLetter /delete | Out-Null
    }
}

# Passwort abfrage
$fooPassword = Read-Host -AsSecureString "Passwort für $env:USERNAME"
$fooUsername = $env:USERDOMAIN + "\" + $env:USERNAME
$credential = New-Object System.Management.Automation.PSCredential ($fooUsername, $fooPassword)
$credential

# Netzlaufwerke verbinden
$drives = @(
    @{ Name = "G"; Path = "\\jung.ch\dfs$\GL$" },
    @{ Name = "H"; Path = "\\jung.ch\dfs$\BFB$" },
    @{ Name = "P"; Path = "\\jung.ch\dfs$\Netprog" },
    @{ Name = "S"; Path = "\\jung.ch\dfs$\Groups" }
)

foreach ($drive in $drives) {
    try {
        $tempFilePath = Join-Path -Path $drive.Path -ChildPath "tempfile.txt"
                $fileStream = [System.IO.File]::Create($tempFilePath, 1024, [System.IO.FileOptions]::DeleteOnClose)
        $fileStream.Close()
        New-PSDrive -Name $drive.Name -PSProvider FileSystem -Root $drive.Path -Persist -Credential $credential
        Write-Host "Laufwerk $($drive.Name) wurde erfolgreich verbunden."
    } catch {
        Write-Host "Fehler beim Verbinden des Laufwerks $($drive.Name): $_"        
    }
}
Start-Sleep -Seconds 10