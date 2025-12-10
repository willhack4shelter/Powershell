$fooAppname = 'cad'
$foo64bit = Get-Itemproperty 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*' | Select-Object DisplayName, DisplayVersion, UninstallString | Where-Object { $_.DisplayName -match "^*$fooAppname*"}
$foo32bit = Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*' | Select-Object DisplayName, DisplayVersion, UninstallString | Where-Object { $_.DisplayName -match "^*$fooAppname*"}
$foo32bit
$foo64bit
# SIG # Begin signature block
# MIIFagYJKoZIhvcNAQcCoIIFWzCCBVcCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUPZT9zFQue7htomHhlHyfQdmZ
# /XegggMGMIIDAjCCAeqgAwIBAgIQY56iIturKbFNk4LwwDH4MjANBgkqhkiG9w0B
# AQsFADAZMRcwFQYDVQQDDA5mb29Db2RlU2lnbmluZzAeFw0xOTA5MjQwNTI4MTZa
# Fw0yMDA5MjQwNTQ4MTZaMBkxFzAVBgNVBAMMDmZvb0NvZGVTaWduaW5nMIIBIjAN
# BgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0BmiojmkTdzhU/Yj6dLNquGzcign
# oFH58DZT9RGdFkMTLlkKO9h1GvoYi0Ca/7GLPUcq0mQHgP2qOvRgzrKegELfm5oC
# Mktav5+Uoq7gKssQESlMAWeDKeDovNQRQK87XTH4keryB0AoyLCpn7+H7F7pXDXl
# /fNjb7pzXihEbx8cEaDnhQyXKPhv/+Bhp5UKeeOaIqegnWMALTgr0HSPRZz6S1XT
# hin8BpbjUOoJw8RLa57FBHZNBMECG7E5O16EZ2PqyYPCEJvx0zqAlRhh6agGkXG1
# Fv4Nlgk8slb8zT4KtfSONYyedpfM0gqofFiWGU6Vast6fLsKt4rAucOy9wIDAQAB
# o0YwRDAOBgNVHQ8BAf8EBAMCBaAwEwYDVR0lBAwwCgYIKwYBBQUHAwMwHQYDVR0O
# BBYEFDzri+cP6w9Svchvfxwk0rf7bffQMA0GCSqGSIb3DQEBCwUAA4IBAQDD/Utj
# Oua5WSwJ61cBFyM/gorR/uY6dFVr8GtEWRLgURPToWFxfLnuhL5Z9qhY0YGt1JRz
# TlspNrPagGy0J8bO0KuM89quV97HvlRBUc5vKOFRUbM1NJV43+nqMQ14Q66PYU91
# mG/qnsQcCiZOQMsoLPOphKMyuKOsB9YFLockbnQSc75MYt6/mqH2LOJ7d0xyO1Uq
# gNGkmMl50qGJ6leG8hLajAQqupyvAbFw4othC9EYLcRGYfYNuNNN9+BjYv92NSId
# rYbxKSQ9TClBRXustPUPbiBj9yNUds8UnffpOFSS0VBfVGcaJVM2m0wMX2cFIGmX
# 85xYM5eJe4/oQsK2MYIBzjCCAcoCAQEwLTAZMRcwFQYDVQQDDA5mb29Db2RlU2ln
# bmluZwIQY56iIturKbFNk4LwwDH4MjAJBgUrDgMCGgUAoHgwGAYKKwYBBAGCNwIB
# DDEKMAigAoAAoQKAADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEE
# AYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAjBgkqhkiG9w0BCQQxFgQUMD7XLf9OAwwx
# Q0RXVZZgwbVtSaswDQYJKoZIhvcNAQEBBQAEggEAxzaCRYccaev2afNNl49oW28r
# zWZHi4khjlOnOh/EHSi14XC42fRpIIPq8uBZIAArNgfy2G5AXrDj1DLJB+ny3mqb
# QuKaW9RrfZfHIt9ZRKAyRChT0MTmyBjlxMD2zW1dLcl5bmkbDQFBf+UkOcLUFl1f
# Z94Cr15SKMQcm+Uw/7qt1uQTmsXXlithZK7rB7ycNdXR58EZZkv05IneyAX974s5
# pGq3svji1Dw0147eLvvr3dMLdePAwQl4wkzhM4BAMFyyQPasyTLjlb5NT2sIkcz6
# Ox/A0dOqNlPZnEJpKCFtx6qEqeobu4Ui7i5GD+wbh+xQIYCp6fdK/x6GT0l5Aw==
# SIG # End signature block
