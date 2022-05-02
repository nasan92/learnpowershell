
<#
The examples are from the PowerShell Documentation you can find all the details here:
link: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_comparison_operators?view=powershell-7.2

Type	        Operator	        Comparison test
------------------------------------------------------------------------------------
Equality	    -eq	                equals
                -ne	                not equals
                -gt	                greater than
                -ge	                greater than or equal
                -lt	                less than
                -le	                less than or equal
Matching	    -like	            string matches wildcard pattern
                -notlike	        string does not match wildcard pattern
                -match	            string matches regex pattern
                -notmatch	        string does not match regex pattern
Replacement	    -replace	        replaces strings matching a regex pattern
Containment	    -contains	        collection contains a value
                -notcontains	    collection does not contain a value
                -in	                value is in a collection
                -notin	            value is not in a collection
Type	        -is	                both objects are the same type
                -isnot	            the objects are not the same type

Note: All the operatos are CASE-INSENSITIVE to make them CASE-SENSITIVE put a 'c' in front of the operator. for example -ceq
#>

# Equality operators
# ----------------------------------------------------------------------------------------------------
'PowerShell' -eq 'powershell'
'PowerShell' -ceq 'powershell'

'PowerShell' -ne 'powershell'

2 -eq 2                 # Output: True
2 -eq 3                 # Output: False
"abc" -eq "abc"         # Output: True
"abc" -eq "abc", "def"  # Output: False
"abc" -ne "def"         # Output: True
"abc" -ne "abc"         # Output: False
"abc" -ne "abc", "def"  # Output: True

1,2,3 -eq 2             # Output: 2
"abc", "def" -eq "abc"  # Output: abc
"abc", "def" -ne "abc"  # Output: def

"zzz", "def", "zzz" -eq "zzz"



8 -gt 6  # Output: True
8 -ge 8  # Output: True
6 -lt 8  # Output: True
8 -le 8  # Output: True



$a=5, 6, 7, 8, 9

Write-Output "Test collection:"
$a

Write-Output "`nMembers greater than 7"
$a -gt 7

Write-Output "`nMembers greater than or equal to 7"
$a -ge 7

Write-Output "`nMembers smaller than 7"
$a -lt 7

Write-Output "`nMembers smaller than or equal to 7"
$a -le 7


# Matching operators
# ----------------------------------------------------------------------------------------------------
# like wildcard expressions: (containing *, ?, and [ ])
"PowerShell" -like    "*shell"           # Output: True
"PowerShell" -notlike "*shell"           # Output: False
"PowerShell" -like    "Power?hell"       # Output: True
"PowerShell" -notlike "Power?hell"       # Output: False
"PowerShell" -like    "Power[p-w]hell"   # Output: True
"PowerShell" -notlike "Power[p-w]hell"   # Output: False

"PowerShell", "Server" -like "*shell"    # Output: PowerShell
"PowerShell", "Server" -notlike "*shell" # Output: Server



# Partial match test, showing how differently -match and -like behave
"PowerShell" -match 'shell'        # Output: True
"PowerShell" -like  'shell'        # Output: False
"PowerShell" -match '*shell'        # Output: Invalid pattern - doesn't work

# Regex syntax test
"PowerShell" -match    '^Power\w+' # Output: True
'bag'        -notmatch 'b[iou]g'   # Output: True


# compare speed - which one is faster like or match?
measure-command {"powershell" -match "shell"}
measure-command {"powershell" -like "*shell"} 

"PowerShell", "Super PowerShell", "Power's hell" -match '^Power\w+'
# Output: PowerShell

"Rhell", "Chell", "Mel", "Smell", "Shell" -match "hell"
# Output: Rhell, Chell, Shell

"Bag", "Beg", "Big", "Bog", "Bug"  -match 'b[iou]g'
#Output: Big, Bog, Bug

"Bag", "Beg", "Big", "Bog", "Bug"  -notmatch 'b[iou]g'
#Output: Bag, Beg


# Replacement operator
# ----------------------------------------------------------------------------------------------------
# <input> -replace <regular-expression>, <substitute>

"book" -ireplace "B", "C" # Case insensitive
"book" -creplace "B", "C" # Case-sensitive; hence, nothing to replace


"B1","B2","B3","B4","B5" -replace "B", 'a'


# Containment operators
# ----------------------------------------------------------------------------------------------------
"abc", "def" -contains "def"                  # Output: True
"abc", "def" -notcontains "def"               # Output: False
"Windows", "PowerShell" -contains "Shell"     # Output: False
"Windows", "PowerShell" -notcontains "Shell"  # Output: True
"abc", "def", "ghi" -contains "abc", "def"    # Output: False
"abc", "def", "ghi" -notcontains "abc", "def" # Output: True

# more examples:
$DomainServers = "ContosoDC1","ContosoDC2","ContosoFileServer","ContosoDNS",
                 "ContosoDHCP","ContosoWSUS"
$thisComputer  = "ContosoDC2"

$DomainServers -contains $thisComputer
# Output: True

$a = "abc", "def"
"abc", "def", "ghi" -contains $a # Output: False
$a, "ghi" -contains $a           # Output: True



# in and not in -> reverse of the contains
"def" -in "abc", "def"                  # Output: True
"def" -notin "abc", "def"               # Output: False
"Shell" -in "Windows", "PowerShell"     # Output: False
"Shell" -notin "Windows", "PowerShell"  # Output: True
"abc", "def" -in "abc", "def", "ghi"    # Output: False
"abc", "def" -notin "abc", "def", "ghi" # Output: True

$DomainServers = "ContosoDC1","ContosoDC2","ContosoFileServer","ContosoDNS",
                 "ContosoDHCP","ContosoWSUS"
$thisComputer  = "ContosoDC2"

$thisComputer -in $DomainServers
# Output: True

$a = "abc", "def"
$a -in "abc", "def", "ghi" # Output: False
$a -in $a, "ghi"           # Output: True

$c = "abc"
$c -in "abc", "def", "ghi" # Output: True

# Type comparison
# ----------------------------------------------------------------------------------------------------
$a = 1
$b = "1"
$a -is [int]           # Output: True
$a -is $b.GetType()    # Output: False
$b -isnot [int]        # Output: True
$a -isnot $b.GetType() # Output: True