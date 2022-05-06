# To check a condition in a script or function, use an if statement
# to check multiple conditions, use a switch statement


# example with a domain - string:
# ----------------------------------------------------------------------------------------------------
$Customerdomain = "unicod.ch"

switch($Customerdomain){
    "unico.ch"{
        Write-host "unico.ch domain selected - do something"
    }
    "nasan.ch"{
        Write-host "nasan.ch selected - do something"
    }
    Default {
        Write-host "unkown domain"
    }
}

# example with numbers (int):
# ----------------------------------------------------------------------------------------------------

switch (3)
{
    1 {"It is one."}
    2 {"It is two."}
    3 {"It is three."}
    4 {"It is four."}
    3 {"Three again."}
    Default {"Unknown number"}
}

# Break statements apply to the collection:
switch (4, 2)
{
    1 {"It is one."; Break}
    2 {"It is two." ; Break }
    3 {"It is three." ; Break }
    4 {"It is four."  }
    3 {"Three again."}
}


# example with an array
# ----------------------------------------------------------------------------------------------------

$env = @('Prod','Staging')

switch ( $env ) {
    'Prod'        { 'Configure Prod Environment' }
    'Staging'     { 'Configure Staging Environment' }
    'Test'        { 'Configure Test Environment' }
}