for ($i = 1; $i -lt 5; $i++) {
    Write-Output "Sleeping for $i seconds"
    Start-Sleep -Seconds $i
    break
  }

while ($i -lt 5) {
  $i += 1
  if ($i -eq 3) {
    continue
  }
  Write-Output $i
}


$number = 1..10
foreach ($n in $number) {
  if ($n -ge 4) {
    Return $n
  }
}