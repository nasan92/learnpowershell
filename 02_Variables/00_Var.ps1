# variables: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_variables?view=powershell-7.2

# USER CREATED VARIABLES 
# display and changing a variable
$color

# strictmode: Establishes and enforces coding rules in expressions, scripts, and script blocks.
Set-StrictMode -Version latest

$color

# declare a variable and assign a value to it:
$color = "blue"
$color

Write-host "The color is $color"
# Note the difference from single quotations marks to double:
Write-host 'The color is $color'

$phrase = "the color is $color"
$phrase

Set-Variable -Name color -Value blue
Get-Variable -Name color

# List all the variables currently in memory:
Get-Variable 


# AUTOMATIC VARIABLES 
# Find help to automatic variables: 
help automatic_variables
# Link: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_automatic_variables?view=powershell-7.2

# $null Variable
# contains null or empty value - explicit placeholder
$null
# If PowerShell is set to strict mode you'll get an error if you run $wine
$wine
# if you assign $null and run $wine then you won't get an error because PowerShell recoginzes the variable
$wine = $null
$wine
$beer 

# should show name wine with empty value
get-variable -Name wine
# shows error
get-variable -Name beer

# Note: $null is useful if you wan't to check if a variable is still empty or not.


# LASTEXITCODE Variable
# Contains the exit code of the last native program that was run.
# PowerShell allows you to run external apps like ping.exe  - when 
# 0 = success
# 1 = failure

$LASTEXITCODE
PING.EXE -n 1 bieraufweindaslassesein.ch
# Now lastexitcode should contain 1 because the website above doesn't exist
$LASTEXITCODE

# if we ping an existing domain and we have internet connection - lastexitcode will be 0
PING.EXE -n 1 github.com
$LASTEXITCODE



# Verify which OS you are running:
$IsLinux
$IsMacOS
$IsWindows


# PREFERENCE VARIABLES
# reference variables store user preferences for PowerShell. 
$MaximumHistoryCount

Get-History