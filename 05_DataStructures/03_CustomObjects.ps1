# You can create custom objects with properties and methods that you define
# you notice the difference to an hashtable when you want to use format-table or export-csv for example


# Creating a PSCustomObject
# ----------------------------------------------------------------------------------------------------
$myBeer = [PSCustomObject]@{
    Name            = 'Thun Bier'
    Type            = 'Pale Ale'
    Manufacturer    = 'Brauerei Thun AG'
}
$myBeer

$myFirstCustomObject = [PSCustomObject]@{OSBuild = 'x'; OSVersion = 'y'}

# legacy approach to create custom objects with the New-Object Command:
$myFirstCustomObject = New-Object -TypeName PSCustomObject

# Converting a hashtable to a PSCustomObject
# ----------------------------------------------------------------------------------------------------
# first we create a hashtable
$myBeerHashtable = @{
    Name            = 'Thun Bier'
    Type            = 'Amber Ale'
    Manufacturer    = 'Brauerei Thun AG'
}
$myBeerHashtable.GetType()
$myBeerHashtable 

# now we convert the hashtable to a pscustomobject
$myBeer2 = [pscustomobject]$myBeerHashtable
$myBeer2.gettype()
$myBeer2


# Adding properties
# ----------------------------------------------------------------------------------------------------
$myBeer2 | Add-Member -MemberType NoteProperty -Name 'Price' -Value 3.9
# show the added property with the value:
$myBeer2.Price


# Reading / accessing properties
# ----------------------------------------------------------------------------------------------------
# show the added property with the value:
$myBeer2.Price
$myBeer2.Manufacturer
# you can also use a string:
$myBeer2.'Manufacturer'
# or you can use a variable fo the property name:
$property = 'Manufacturer'
$myBeer2.$property

Get-Member -InputObject $myBeer2 

# Removing properties
# ----------------------------------------------------------------------------------------------------
$myBeer2.psobject.properties.remove('Price')
$myBeer2


# Adding object methods
# ----------------------------------------------------------------------------------------------------
# to add a method directly during creation of the PSCustomObject:
$myBeer = [PSCustomObject]@{
    Name                    = 'Thun Bier'
    Type                    = 'Pale Ale'
    Manufacturer            = 'Brauerei Thun AG'
    'Manufacturing date'    = ([ScriptBlock]{
        Get-Date
      }).InvokeReturnAsIs()
}

$myBeer

# It is also possible to create the ScriptBlock outside of the PSCustomObject like in this example: 
$ScriptBlockExample = ([scriptblock]{
    Get-Date
}).InvokeReturnAsIs()

$myBeer2 = [PSCustomObject]@{
    Name                    = 'Thun Bier'
    Type                    = 'IPA'
    Manufacturer            = 'Brauerei Thun AG'
    'Manufacturing date'    = $ScriptBlockExample
}
$myBeer2 



