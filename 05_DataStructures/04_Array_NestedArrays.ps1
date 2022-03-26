$beerTypePicker = @('Lager','Porter','Stout','Blond Ale','Brown Ales','Pale Ale','India Pale ALe')
$wineTypePicker = 'Pinot noir','Syrah','Cabernet Sauvignon'


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