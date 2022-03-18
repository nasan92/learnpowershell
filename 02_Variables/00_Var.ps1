# display and changing a variable
$MaximumHistoryCount

$color

# strictmode: Establishes and enforces coding rules in expressions, scripts, and script blocks.
Set-StrictMode -Version latest

$color

# declare a variable and assign a value to it:
$color = "blue"
$color

Set-Variable -Name color -Value blue
Get-Variable -Name color

# List all the variables currently in memory:
Get-Variable 


# automatic variables

$null
