# Creating an Array
# ----------------------------------------------------------------------------------------------------
# the @ sign with the paranthesis signals that you'd like to create an array

$beerTypePicker = @('Lager','Porter','Stout','Blond Ale','Brown Ales','Pale Ale','India Pale ALe')
$beerTypePicker
$beerTypePicker.GetType()

# PowerShell treats any comma-separated set of values as an array - so it isn't necessary to use the @ and parentheses
$wineTypePicker = 'Pinot noir','Syrah','Cabernet Sauvignon'
$wineTypePicker
$wineTypePicker.GetType()

# Creating an array with numeric values:
$numbers = 22,5,3,75,34,2
$numbers
$numbers.GetType()

# other examples with numbers:
# single item array:
$B = ,8
$B.GetType()
# using range
$C = 5..9
$C
$C.gettype()

# Use Write-output to create arrays:
$data = Write-Output Zero One Two Three
$data 
$data.gettype()

