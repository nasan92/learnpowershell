# learnpowershell

## Prepare your environment
### Install Software
install the following software (recommendation: use a package manager like winget for example to install this software):
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
### Create your personal Github Account with a Repository

- create your own Github account https://github.com/
- create your first repo, clone it and open it in vscode https://docs.github.com/en/get-started/quickstart/hello-world#creating-a-repository
- login to vscode with your github account
- install powershell extension in vscode

## What version of PowerShell am I running?
Check which Powershell version you are using:
$PSVersionTable
$PSVersionTable.PSVersion

## Execution Policy
It's designed to prevent a user from unknowingly running a script.
Get-ExecutionPolicy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
Set-ExecutionPolicy -ExecutionPolicy Bypass

## Run Powershell as admin
RUNNING POWERSHELL AS ADMINISTRATOR At times it’s necessary to run the PowerShell console as Administrator. This typically happens when you need to modify files, the registry, or anything else that’s outside your user profile.  You can run PowerShell as an Administrator by right-clicking in Windows PowerShell and then clicking Run as Administrator.

[Demo Sandboxk](00_GettingStared/../00_GettingStarted/Demo/demo-sandbox-readme.md)