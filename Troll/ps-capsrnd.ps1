$wsh = New-Object -ComObject WScript.Shell
for ($i = 0; $i -lt 10; $i++) {
    Start-Sleep -Seconds (Get-Random -Minimum 3 -Maximum 20)
    $wsh.SendKeys('{CAPSLOCK}')
}
