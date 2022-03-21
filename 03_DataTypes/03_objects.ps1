# In PowerShell - everything is an object 
# an object is an instance of a class
# the class determins methods, properties, actions.

$car = "Toyota"

# look at properties of an object:
Select-Object -InputObject $car -Property *
$car | Select-Object *

$car.Length

# to discover all properties and methods that exist on a object - use get-member

Get-Member -InputObject $car
$car | Get-Member
$car | gm 

# calling methods
get-member -InputObject $car -Name remove 
$car.Remove(0,1)
$car.Remove(1,1)
$car.Remove(0,3)

$car.ToLower()

'this is rocket science'.Replace('rocket', 'rock')

$w = "    4 white space before and 4 after    "
$w.trim()


