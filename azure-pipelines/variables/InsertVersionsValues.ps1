[string]::join(',',(@{
    ('StreamJsonRpcVersion') = & { (dotnet tool run nbgv get-version --project "$PSScriptRoot\..\..\src\StreamJsonRpc" --format json | ConvertFrom-Json).AssemblyVersion };
}.GetEnumerator() |% { "$($_.key)=$($_.value)" }))
