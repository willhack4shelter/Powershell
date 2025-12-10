$fooFile = "\\jung.ch\dfs$\folderredirection$\$env:UserName\AppData\Roaming\picpick\picpick.ini"
(Get-Content $fooFile) -replace "CheckUpdate=0", "CheckUpdate=1" | Set-Content $fooFile