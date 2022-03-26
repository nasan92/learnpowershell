$beerTypePicker = @('Lager','Porter','Stout','Blond Ale','Brown Ales','Pale Ale','India Pale ALe')

# "Removing Elements" from an Array
# ----------------------------------------------------------------------------------------------------

# There is no easy way to delete elements from an array. But you can create a new array that contains only selected items of an existing array. 
# in This example I would like to remove the first item from the beerTypePicker Array:
$beerTypePickerNew = $beerTypePicker[1..($beerTypePicker.Length -1)]
$beerTypePickerNew

# to remove the third item from beerTypePicker Array which is on index position 2:
$beerTypePickerNew2 = $beerTypePicker[0,1 + 3..($beerTypePicker.Length -1)]
$beerTypePickerNew2