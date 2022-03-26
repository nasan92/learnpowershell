$beerTypePicker = @('Lager','Porter','Stout','Blond Ale','Brown Ales','Pale Ale','India Pale ALe')

# "Adding Elements" to an Array
# ----------------------------------------------------------------------------------------------------
# If you want to add items to an array, use the addition operator +
$beerTypePicker = $beerTypePicker + 'Pilsner'
$beerTypePicker

# quicker way to do the same above:
# += -> add this item to the existing array
$beerTypePicker += 'Wheat'
$beerTypePicker

# you can also add an array to another array:
$beerTypePicker += @('Belgian-Style Ale','German Bock')
$beerTypePicker

# NOTE: When you use the += operator, PowerShell actually creates a new array with the values of the original array and the added value. 
# This might cause performance issues if the operation is repeated several times or the size of the array is too big.