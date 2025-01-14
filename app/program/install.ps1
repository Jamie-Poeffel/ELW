$version_file = "C:\Windows\System32\ELW\version.json"
$jsonUrl = 'https://raw.githubusercontent.com/Jamie-Poeffel/ELW/main/app/program/version.json'


# Read the local JSON file and convert it to a PowerShell object
$version = Get-Content -Path $version_file -Raw | ConvertFrom-Json

$vers = $version.version.Trim()  # Trim any spaces

$online_version = Invoke-RestMethod -Uri $jsonUrl -Method Get

# Extract version numbers
$onvers = $online_version.version.Trim()  # Trim any spaces

# Compare versions correctly
if ($vers -ne $onvers) {
    Write-Host "Update to new Version $onvers with command: elx -u / elx --update" -ForegroundColor Red
    Exit 1
}

& C:\Windows\System32\ELW\framework.exe
