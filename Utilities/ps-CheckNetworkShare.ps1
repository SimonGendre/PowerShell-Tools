#check les machines d'une classe à la recherche de partages réseaux
param($salle, $nbrPlace, $partage)

if ($null -ne $salle -and $null -ne $nbrPlace -and $null -ne $partage) {
    for ($i = 1; $i -lt $nbrPlace; $i++) {
   
        if ($i -lt 10) {
            $num = "0" + $i;
        }
        else {
            $num = $i + ""
        }
        $machine = "wstemf$salle-$num";
        
        #check si la machine est atteignable
        if ($null -ne (ping $machine -n 1 | findstr ms)) {
            #check le partage
            if (Test-Path $("filesystem::\\$machine\$partage")) {
                Write-Host "$machine : OK"
            }else {
            Write-Host "$machine : NOK"
        }
        }
        else {
            Write-Host "$machine : OFF"
        }
        #show progress
        $prozent = ($i + 1) * 100 / $nbrPlace
        Write-Progress -Activity "Search in Progress" -Status "$prozent% Complete:" -PercentComplete $prozent    
        
    }

} else {
    Write-Host "param : salle, nbrPlace, partage"
}






