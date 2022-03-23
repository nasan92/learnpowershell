# Strings 

$color = 'yellow'
$color.GetType()

# you need to use quoutes (single or double) to create a string
# this won't work
$color = blue

# again difference between single or double quotes
"$color"
'$color'

# you can also store number into strings but look what happens if you want to add them together:
$num1 = "23"
$num2 = "5"
$sum = $num1 + $num2 
Write-host "Is the sum of adding $num1 to $num2 : $sum ?"

# The same example with the numbers as int:
$numInt1 = 23
$numInt2 = 5
$sumInt = $numInt1 + $numInt2 
Write-host "Is the sum of adding $numInt1 to $numInt2 : $sumInt ?"
