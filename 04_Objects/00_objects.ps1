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


# other object examples:
$f = Get-Item .\README.md
$f | select * 
# --------------------------------------------------------------------------------------------------
# Service example
Get-Service -Name w32time

# First line: typename - type of object
Get-Service -Name w32time | Get-Member

# To find commands that accept that type of object as input:
Get-Command -ParameterType ServiceController

# Select all or specific properties
Get-Service -Name w32time | Select-Object -Property *
Get-Service -Name w32time | Select-Object -Property Status, Name, DisplayName, ServiceType
Get-Service -Name w32time | Select-Object -Property Status, DisplayName, Can*

# get methods for get-service
Get-Service -Name w32time | Get-Member -MemberType Method

# example to use a method
(Get-Service -Name w32time).Stop()

# better use cmdlets if one exists:
Get-Service -Name w32time | Start-Service -PassThru

# --------------------------------------------------------------------------------------------------

# process example
Get-Process -Name chrome | Get-member   
Get-Command -ParameterType Process

Get-Process -Name chrome | Select-Object -Property s*

Get-Process -Name chrome | ConvertTo-Html | Out-File chrome-process.html 

Get-Process | Sort-Object -Property ProcessName
Get-Process | Sort ProcessName -desc

