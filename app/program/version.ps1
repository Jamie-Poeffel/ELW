# Path to the JSON file
$version_file = "C:\Windows\System32\ELW\version.json"

# Read the local JSON file and convert it to a PowerShell object
$version = Get-Content -Path $version_file -Raw | ConvertFrom-Json

# Define the URL of the online JSON file
$jsonUrl = 'https://raw.githubusercontent.com/Jamie-Poeffel/ELW/main/app/program/version.json'

# Fetch online version JSON data
$vers = $version.version.Trim()  # Trim any spaces

Write-Host "elx --- $vers"
# Display the local version
$online_version = Invoke-RestMethod -Uri $jsonUrl -Method Get

# Extract version numbers
$onvers = $online_version.version.Trim()  # Trim any spaces

# Compare versions correctly
if ($vers -ne $onvers) {
    Write-Warning "Update to new Version $onvers with command: elx -u / elx --update"
}
