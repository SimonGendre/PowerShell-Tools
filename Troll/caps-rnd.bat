@echo off 
:loop
powershell.exe -nologo -WindowStyle Hidden -sta -command "(New-Object -ComObject WScript.Shell).SendKeys('{CAPSLOCK}')"
powershell "Start-Sleep -Seconds (Get-Random -Minimum 30 -Maximum 120)"
goto loop

