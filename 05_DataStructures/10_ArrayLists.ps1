# arrays in PowerShell have a fixed size - you can't change them, you create a new array
# use ArrayList if you know you have to remove or add many elements to an array
# ArrayLists don't have a fixed size -> much higher performance

# Creating an ArrayList
# ----------------------------------------------------------------------------------------------------
$beerTypePicker = [System.Collections.ArrayList]@('Lager','Porter','Stout','Blond Ale','Brown Ales','Pale Ale','India Pale ALe')
$beerTypePicker
$beerTypePicker.GetType()

# to create an empty list: 
$myarray = [System.Collections.ArrayList]::new()


# Note: We are calling into .NET to get this type.

# Adding Elements to an ArrayList
# ----------------------------------------------------------------------------------------------------
$beerTypePicker.Add('Pilsner')
# Note: The output shows you the index of the new element you added
$beerTypePicker
# If you don't wan't the output with the index number - send the output to änull
$null = $beerTypePicker.Add('Wheat')
$beerTypePicker

# or you can use [void] at the beginning to suppress the return code (the output)
[void]$myArray.Add('Value')

# Removing Elements from an ArrayList
# ----------------------------------------------------------------------------------------------------
$beerTypePicker.Remove('Wheat')
$beerTypePicker
