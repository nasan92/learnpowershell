# Integer data types hold only whole numbers and will round any decimal input to the nearest integer.
# By default, PowerShell stores integers by using the 32-bit signed Int32 type.

$Number = 35
$Number.GetType()

# floating-point types - double (used for decimals)
$Number = 1.5
$Number.GetType()

# to force PowerShell to use a certain datatype:
[int32]$Number = 1.5
$Number
