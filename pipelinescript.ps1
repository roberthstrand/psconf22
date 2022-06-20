param (
    [Parameter()]
    [string]
    $Greeting = "Hello",
    [Parameter()]
    [string]
    $Name = "World"
)

Write-Host "$Greeting, $Name!"