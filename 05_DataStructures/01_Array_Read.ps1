$beerTypePicker = @('Lager','Porter','Stout','Blond Ale','Brown Ales','Pale Ale','India Pale ALe')

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