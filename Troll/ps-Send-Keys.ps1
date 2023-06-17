#------------------------------------------------------------------------------------
#   script ouvrant une application passée en paramètre et entre un texte défini
#   de base, ouvre notepad si seulement le message est précisé
#   EVOLUTION : faire execution depuis le réseau
#------------------------------------------------------------------------------------

param($string, $app, $sleep)

#define unused parameters
if ($null -eq $app) {
    $app = "notepad.exe"
}
if ($null -eq $sleep) {
    $sleep = 1
}


if ($null -ne $string) {
    
    $chars = $string.ToCharArray()
    $wsh = New-Object -ComObject WScript.Shell

    #start the choosen app, wait and put focus on it ($app)
    Start-Process $app
    Start-Sleep -Seconds $sleep
    $wshell = New-Object -ComObject wscript.shell
    $wshell.AppActivate($app)
    
    #send keys from $string
    foreach ($char in $chars) {
        $wsh.SendKeys($char)
    }
    $wsh.SendKeys('{ENTER}')
}
else {
    Write-Host "Veuillez entrer une chaine de caracteres en parametre"
    Write-Host "param : message, application.exe, sleep timer (time for the app to open)"
}