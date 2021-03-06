# The foreach statement (also known as a foreach loop) is a language construct for stepping through (iterating) a series of values in a collection of items.

# Basic Syntax:
# ----------------------------------------------------------------------------------------------------
# foreach ($<item> in $<collection>){<statement list>}



# foreach statement
# ----------------------------------------------------------------------------------------------------
$servers = @(
    'app01'
    'srv01'
    'dc01'
    'sql01'
)

foreach($server in $servers){
    Write-host "Do something with $server"
}

# can also be used together with cmdlets that return a collection of items
foreach ($file in Get-ChildItem)
{
  Write-Host $file.name
  
}

# example with a hashtable
$ageList = @{
  Hans  = 73
  John  = 33
}
foreach($key in $ageList.keys)
{
    $v = $ageList[$key]
    $m = "$key is $v years old"
    Write-Output $m
  }

# ForEach-Object cmdlet
# ----------------------------------------------------------------------------------------------------
$servers | ForEach-Object -Process { Write-host "Do something with $_ Server"}

# The foreach() Method
# ----------------------------------------------------------------------------------------------------
$servers.foreach({Write-host "do something with server $_ now"})
# The foreach() method is considerably faster than the other two, and noticeably so when processing large datasets. I recommend that you use this method over the other two wherever possible.

$processes = Get-Process
$processes.foreach(
  {
    write-host $_.ProcessName
  }
)
