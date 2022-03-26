# Array Types - By default, an array in PowerShell is created as a [PSObject[]] type.
# ----------------------------------------------------------------------------------------------------

# to use a specific data type (strongly typed arrays):
[int32[]]$intNumbers = 1500,2230,3350,4000
$intNumbers
$intNumbers.gettype()

[string[]]$stringNumbers = 1500,2230,3350,4000
$stringNumbers
$stringNumbers.gettype()
