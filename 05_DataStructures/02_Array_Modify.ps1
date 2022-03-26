$beerTypePicker = @('Lager','Porter','Stout','Blond Ale','Brown Ales','Pale Ale','India Pale ALe')

# Modifying Elements in an Array
# ----------------------------------------------------------------------------------------------------
# to modify an element in array, just reference the item with its index - use equl sign and assign a new value
# show value before changing it
$beerTypePicker[4]
# now change to the new value
$beerTypePicker[4] = "Sour Ale"
# verify if the new value is assigned:
$beerTypePicker[4]