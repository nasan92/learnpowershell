# Basic Syntax:
# ----------------------------------------------------------------------------------------------------
# while (<condition>){<statement list>}

# Similar to the Do While loop, a While loop runs as long as the specified condition is true - BUT evaluations happens at the top of the loop

while($val -ne 3)
{
    $val++
    Write-Host $val
}

$date = Get-Date -Date 'November 22'
while ($date.DayOfWeek -ne 'Thursday') {
  $date = $date.AddDays(1)
}
Write-Output $date