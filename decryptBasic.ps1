$fooEncodedText = read-host "Enter Text"
$fooDecodedText = [System.Text.Encoding]::utf8.GetString([System.Convert]::FromBase64String($fooEncodedText))
$fooDecodedText