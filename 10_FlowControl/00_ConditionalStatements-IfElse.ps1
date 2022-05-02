# The if Statement (if X is true, then do Y)

# Basic Syntax:
# ----------------------------------------------------------------------------------------------------
# if (<test1>)
#     {<statement list 1>}
# [elseif (<test2>)
#     {<statement list 2>}]
# [else
#     {<statement list 3>}]

$a = 3
if ($a -gt 2) {
    Write-Host "The value $a is greater than 2."
}
elseif ($a -eq 2) {
    Write-Host "The value $a is equal to 2."
}
else {
    Write-Host ("The value $a is less than 2 or" +
        " was not created or initialized.")
}


# Ternary operator syntax - ONLY in PowerShell 7.0
# ----------------------------------------------------------------------------------------------------
# simplified if-else statement
# <condition> ? <if-true> : <if-false>
$path = "C:\temp"
$message = (Test-Path $path) ? "Path exists" : "Path not found"
Write-host $message


$b = 3
($b -gt 2) ? "$b is greater than 2" : "$a is equal or less than 2"


$service = Get-Service w32time
$service.Status -eq 'Running' ? (Stop-Service $service) : (Start-Service $service)


# The if Statement -> you can use all kind of comparison operators in the condition:
# ----------------------------------------------------------------------------------------------------

if ( $IsWindows -eq $true)
{
    Write-Output "You are working on a Windows OS"
}
# shorter way to do the same:
if ( $IsWindows )
{
    Write-Output "You are working on a Windows OS"
}


$BeersOrdered = 5

if($BeersOrdered -gt 2){
    Write-Output "I'm sorry but you already orderd enough beer"
}
if($BeersOrdered -lt 1){
    Write-Output "Time to order some beer"
}

$ComputerName = "DC01"
if ($ComputerName -like "DC*") {
    Write-Output "Shutdown $ComputerName I think nobody needs a domain controller"
}

$a = 3
if($a -is [int]){
    Write-host "$a is int data type - do something"
}

# Logical operators
# ----------------------------------------------------------------------------------------------------
# -not
$path = "X:\NonexistingPath"
if ( -not ( Test-Path -Path $path ) ){
    Write-host "$path does not exist"
}

# ! operator -> ! as an alias for -not
$path = "X:\NonexistingPath"
if ( ! ( Test-Path -Path $path ) ){
    Write-host "$path does not exist"
}

$c
if(!$c){
    Write-host "does not exist"
}

# -and
$age = 18
if ( ($age -gt 18) -and ($age -lt 30) ){
    Write-host "your age is greater than 18 and less than 30"
}

# -or
$age = 2
if ( $age -le 13 -or $age -ge 55 ){
    Write-host "one of the conditions is ture"
}



# PowerShell expressions in the condition statement
# ----------------------------------------------------------------------------------------------------
if(test-path C:\Windows){
    Write-output "C:\Windows directory is here"
}

if(get-process -name code){
    Write-output "You have vscode open how it looks like"
}

# example to check if you are connected with azure:
$context = Get-AzContext
if (!$context) 
{
    Connect-AzAccount 
}else{
    Write-host "You are already connected with Azure: $context"
}
