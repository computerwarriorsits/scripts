[CmdletBinding()]
param (
    [Parameter(Mandatory=$false)][string] $username = "RMMTech",
    [Parameter(Mandatory=$false)][int] $pwdlength = 18
)

If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    Write-Warning "You do not have Administrator rights to run this script!`nPlease re-run this script as an Administrator!"
    Exit
}

$password = -join ((33..33) + (35..38) + (42..42) + (50..57) + (63..72) + (74..75) + (77..78) + (80..90) + (97..104) + (106..107) + (109..110) + (112..122) | Get-Random -Count $pwdlength | ForEach-Object {[char]$_})
$securePassword = ConvertTo-SecureString -String $password -AsPlainText -Force

$localAdmin = Get-LocalUser | Where-Object {$_.Name -eq $username}

if (-not $localAdmin)
{
    New-LocalUser "$username" -Password $securePassword -FullName "$username" -Description "CW RMMTech"
    Add-LocalGroupMember -Group "Administrators" -Member "$username"
}
else
{
    Set-LocalUser -Name $username -Password $securePassword
}

#  $env:computername - Will return the computer name
#  $username - Is the username passed to the script
#  $password - Is the randomly generated password
return $password

