# Creating an Array
# ----------------------------------------------------------------------------------------------------
# the @ sign with the paranthesis signlas that you'd like to create an array

$beerTypePicker = @('Lager','Porter','Stout','Blond Ale','Brown Ales','Pale Ale','India Pale ALe')
$beerTypePicker

# PowerShell treats any comma-separated set of values as an array - so it isn't necessary to use the @ and parentheses
$wineTypePicker = 'Pinot noir','Syrah','Cabernet Sauvignon'
$wineTypePicker

# Reading Array Elements
# ----------------------------------------------------------------------------------------------------
# Note: Numbering starts with 0 

# this should show you the first element of the array
$beerTypePicker[0]
# this one the sixth
$beerTypePicker[5]

# -1 shows you the last element:
$beerTypePicker[-1]

# if you try to use an index number that doesn't exist in the array, you'll get an error
# -> at least when strictmode is enabled - otherwise it may show just nothing
$beerTypePicker[30]

# access multiple elements in an array at the same time with the range operator (..)
# example of using range operator:
1..6
# range operator within the array:
$beerTypePicker[0..3]


# Modifying Elements in an Array
# ----------------------------------------------------------------------------------------------------
# to modify an element in array, just reference the item with its index - use equl sign and assign a new value
# show value before changing it
$beerTypePicker[4]
# now change to the new value
$beerTypePicker[4] = "Sour Ale"
# verify if the new value is assigned:
$beerTypePicker[4]


# Adding Elements to an Array
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

# Removing Elements from an Array
# ----------------------------------------------------------------------------------------------------

# that's complicated xD