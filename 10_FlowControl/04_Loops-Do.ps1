# Basic Syntax:
# ----------------------------------------------------------------------------------------------------
# do {<statement list>} while (<condition>)

# do {<statement list>} until (<condition>)

# Do loops always run at least once because the condition is evaluated at the end of the loop.

# Do Until
# ----------------------------------------------------------------------------------------------------
# Do Until runs while the specified condition is false.
$number = Get-Random -Minimum 1 -Maximum 10
do {
  $guess = Read-Host -Prompt "What's your guess?"
  if ($guess -lt $number) {
    Write-Output 'Too low!'
  }
  elseif ($guess -gt $number) {
    Write-Output 'Too high!'
  }
}
until ($guess -eq $number)


# Do While
# ----------------------------------------------------------------------------------------------------
# Do While is just the opposite. It runs as long as the specified condition evaluates to true.

$number = Get-Random -Minimum 1 -Maximum 10
do {
  $guess = Read-Host -Prompt "What's your guess?"
  if ($guess -lt $number) {
    Write-Output 'Too low!'
  } elseif ($guess -gt $number) {
    Write-Output 'Too high!'
  }
}
while ($guess -ne $number)




