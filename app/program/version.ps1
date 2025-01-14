# Path to the JSON file
$version_file = "C:\Windows\System32\ELW\version.json"

# Read the JSON file and convert it to a PowerShell object
$version = Get-Content -Path $version_file -Raw | ConvertFrom-Json

$vers = $version.version

# Access properties of the JSON object
Write-Host "elx --- $vers"
