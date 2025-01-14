# Path to the JSON file
$version_file = "C:\Windows\System32\ELW\version.json"

# Read the JSON file and convert it to a PowerShell object
$version = Get-Content -Path $version_file -Raw | ConvertFrom-Json

$online_version = Get-Content -Path 'https://github.com/Jamie-Poeffel/ELW/blob/main/app/program/version.json' -Raw | ConvertFrom-Json

$onvers = $online_version.version
$vers = $version.version

# Access properties of the JSON object
Write-Host "elx --- $vers"

if (-not(vers -eq $onvers)) {
    Write-Host "Update to new Version $onvers with command elx -u / elx --update"
}
