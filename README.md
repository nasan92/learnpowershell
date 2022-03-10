# learnpowershell

## to start recommendations

install (recommendation: use a package manager like winget for example to install this software):
- vscode
- Windows Terminal
- git
- Powershell 7 

``$software = @(
"vscode"
"Microsoft.Powershell"
"Git.Git"
"Microsoft.WindowsTerminal "
)
foreach($i in $software){
    winget install $i
}
``

Install powershell extension for Vscode 

- create your own Github account
- create your first repo, clone it and open it in vscode

## What version of PowerShell am I running?
Check which Powershell version you are using:
$PSVersionTable
$PSVersionTable.PSVersion

## Execution Policy
It's designed to prevent a user from unknowingly running a script.
Get-ExecutionPolicy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
Set-ExecutionPolicy -ExecutionPolicy Bypass
