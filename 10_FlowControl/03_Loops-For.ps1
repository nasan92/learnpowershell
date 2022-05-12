# The For statement (also known as a For loop) is a language construct you can use to create a loop 
# that runs commands in a command block while a specified condition evaluates to $true.

# Basic Syntax:
# ----------------------------------------------------------------------------------------------------
# for (<Init>; <Condition>; <Repeat>)
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
    Write-Host $i
}