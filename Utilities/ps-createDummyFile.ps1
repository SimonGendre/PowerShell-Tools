param($fichier, $taille)

if ($null -ne $fichier -and $null -ne $taille) {

    $f = new-object System.IO.FileStream $fichier, Create, ReadWrite
    $f.SetLength($taille)
    $f.Close()
}

