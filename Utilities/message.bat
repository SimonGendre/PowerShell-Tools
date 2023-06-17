@echo off
set /p classe="Classe: "
set /p place="Place: "
set /p message="Message: "
msg /SERVER:WSTEMF%classe%-%place% * /TIME:60 "%message%"

EXIT /B 0







