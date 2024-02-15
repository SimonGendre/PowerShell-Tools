#open a terminal as trusted installer Aka root. Be careful please
Install-Module -Name NtObjectManager
Start-Service -Name TrustedInstaller
$parent = Get-NtProcess -ServiceName TrustedInstaller
$proc = New-Win32Process powershell.exe -CreationFlags NewConsole -ParentProcess $parent