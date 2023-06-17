@echo off
:random
SET /A test=%RANDOM% * 15 / 32768 + 1
goto :color



:color
if %test% equ 1 color 1f
if %test% equ 2 color 2f
if %test% equ 3 color 3f
if %test% equ 4 color 4f
if %test% equ 5 color 5f
if %test% equ 6 color 6f
if %test% equ 7 color 7f
if %test% equ 8 color 8f
if %test% equ 9 color 9f
if %test% equ 10 color af
if %test% equ 11 color bf
if %test% equ 12 color cf
if %test% equ 13 color df
if %test% equ 14 color ef
if %test% equ 15 color ff


# timeout /t 1 /nobreak >nul
goto :random












