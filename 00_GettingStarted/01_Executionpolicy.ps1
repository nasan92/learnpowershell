# more information to execution policies: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.2

Get-ExecutionPolicy
Set-ExecutionPolicy -ExecutionPolicy Restricted

# this one works
Get-Service -Name W32Time | Stop-Service -PassThru

# this one fails
00_GettingStarted\Stop-TimeService.ps1

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process

# now it should work
.\00_GettingStarted\Stop-TimeService.ps1

# bypass will allow all
Set-ExecutionPolicy -ExecutionPolicy Bypass

