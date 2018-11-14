## Brissotech
## Script provided as is. Use at own risk. No guarantees or warranty provided.

## Source - https://github.com/Brisso/Azure

## Description
## Script designed to allow you to assign a user local administrator privileges via powershell.
#
$confirmation = Read-Host "Are you sure you want to Procced to grant admin permissions? [y/n]"
while($confirmation -ne "y")
{
    if ($confirmation -eq 'n') {exit}
    $confirmation = Read-Host "Are you sure you want to Procced to grant admin permissions? [y/n]"
}
#
$name = Read-Host 'What is the username of the user to assign admin permissions?'
Write-Host "You input username is $name" -ForegroundColor Yellow 
Add-LocalGroupMember -Group "Administrators" -Member "$name"
Write-Host "You input username is $name" -ForegroundColor Yellow
Write-Host "List of Administrators are as follows" -ForegroundColor Yellow 
Get-LocalGroupMember -Group "Administrators" | Format-List
