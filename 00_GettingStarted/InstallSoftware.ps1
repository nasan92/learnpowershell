# you need to have winget installed https://docs.microsoft.com/en-us/windows/package-manager/winget/
# to use winget within windows sandbox - take a look into the demo folder
$software = @(
"vscode"
"Microsoft.Powershell"
"Git.Git"
"Microsoft.WindowsTerminal "
)

foreach($i in $software){
    winget install $i --accept-package-agreements
}