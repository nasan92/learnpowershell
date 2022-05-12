# The For statement (also known as a For loop) is a language construct you can use to create a loop 
# that runs commands in a command block while a specified condition evaluates to $true.

# Basic Syntax:
# ----------------------------------------------------------------------------------------------------
# for (<Initial iterator value>; <Condition>; <Repeat>)
# {
#     <Statement list>
# }


# the for statement
# ----------------------------------------------------------------------------------------------------
for ($i = 1; $i -lt 5; $i++) {
    Write-Output "Sleeping for $i seconds"
    Start-Sleep -Seconds $i
  }


for ($i = 0; $i -le 20; $i += 2)
{
    Write-Host "number $i"
}


# examples from: https://adamtheautomator.com/powershell-for-loop/

for ($x='' ;$x.length -le 30;$x=$x+'x'){
  Write-Host $x
  Start-Sleep -Milliseconds 20
}


$colors = @("Green","Cyan","Red","Magenta","Yellow","White")
for (($x=''),($fgcolor = $colors | Get-Random) ;$x.length -le 30;($x=$x+'x'),($fgcolor = $colors | Get-Random)){
    Write-Host $x -ForegroundColor $fgcolor
    Start-Sleep -Milliseconds 20
}



for ($seconds=10; $seconds -gt -1; $seconds--) {
  Write-Host -NoNewLine ("`rseconds remaining: " + ("{0:d4}" -f $seconds))
  Start-Sleep -Seconds 1
}

