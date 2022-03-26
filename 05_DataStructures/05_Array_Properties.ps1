$beerTypePicker = @('Lager','Porter','Stout','Blond Ale','Brown Ales','Pale Ale','India Pale ALe')


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