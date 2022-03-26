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

# to show the last three elements:
$beerTypePicker[-3..-1]
# shows the last three elements as well but in descending order:
$beerTypePicker[-1..-3]


# Modifying Elements in an Array
# ----------------------------------------------------------------------------------------------------
# to modify an element in array, just reference the item with its index - use equl sign and assign a new value
# show value before changing it
$beerTypePicker[4]
# now change to the new value
$beerTypePicker[4] = "Sour Ale"
# verify if the new value is assigned:
$beerTypePicker[4]


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


# Creating an Array that contains other arrays - known as a jagged array or nested arrays
# ----------------------------------------------------------------------------------------------------

$alcoholTypePicker = @(
    $beerTypePicker,
    $wineTypePicker
)
$alcoholTypePicker.gettype()
# to access the first Array int the alcoholTypePicker Array:
$alcoholTypePicker[0]
# to access the second item (numbering starts at 0) in the first item(array) of alcoholTypePicker 
$alcoholTypePicker[0][1]




# View Properties of Array Elements
# ----------------------------------------------------------------------------------------------------
# When you pipe and array of objects to Get-Member, the cmdlet returns a member list for each unique object type in the array.
$array = @(1,'hello')
$array | Get-Member

# If you pass the array using the InputObject parameter, the array is treated as a single object.
Get-Member -InputObject $array

get-member -InputObject $beerTypePicker

# To determine how many items are in an array use Count or Lenght 
$beerTypePicker.Count
$beerTypePicker.Length


# "Removing Elements" from an Array
# ----------------------------------------------------------------------------------------------------

# There is no easy way to delete elements from an array. But you can create a new array that contains only selected items of an existing array. 
# in This example I would like to remove the first item from the beerTypePicker Array:
$beerTypePickerNew = $beerTypePicker[1..($beerTypePicker.Length -1)]
$beerTypePickerNew

# to remove the third item from beerTypePicker Array which is on index position 2:
$beerTypePickerNew2 = $beerTypePicker[0,1 + 3..($beerTypePicker.Length -1)]
$beerTypePickerNew2


# Array of Objects - arrays can also contain objects 
# ----------------------------------------------------------------------------------------------------

# example:
$processList = Get-Process
$processList.GetType()

# accessing properties 
# index can bi used to access an individual item
$processList[0] 
$processList[0].ProcessName

# you can as well request specific properties from the whole array
$processList.ProcessName


# Array Types - By default, an array in PowerShell is created as a [PSObject[]] type.
# ----------------------------------------------------------------------------------------------------

# to use a specific data type (strongly typed arrays):
[int32[]]$intNumbers = 1500,2230,3350,4000
$intNumbers
$intNumbers.gettype()

[string[]]$stringNumbers = 1500,2230,3350,4000
$stringNumbers
$stringNumbers.gettype()

