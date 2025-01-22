# Load Version Information
$jsonPath = ".\app\program\version.json" # Update this path if the JSON file is located elsewhere
Write-Host | Test-Path -Path $jsonPath
if (Test-Path $jsonPath) {
    $versionInfo = Get-Content $jsonPath | ConvertFrom-Json
    $version = $versionInfo.version
    $name = $versionInfo.name
    $author = $versionInfo.author
    $docuPath = $versionInfo.repository + "/blob/main/docs/de/elx.md"
    $copyright = $versionInfo.copyright
}
else {
    $version = "Unknown"
    $name = "ELX"
    $author = "Unknown"
    $copyright = "© Unknown"
}

# Display Help Page
Write-Host ""
Write-Host "===========================================================" -ForegroundColor Blue
Write-Host "                       $name TOOL HELP                     " -ForegroundColor Yellow
Write-Host "===========================================================" -ForegroundColor Blue
Write-Host ""
Write-Host "Version: $version" -ForegroundColor Cyan
Write-Host "Author: $author" -ForegroundColor Cyan
Write-Host ""
Write-Host "===========================================================" -ForegroundColor Blue

# Section: Install Command
Write-Host "COMMAND: install / i" -ForegroundColor Green
Write-Host "===========================================================" -ForegroundColor Cyan
Write-Host "  Installs the specified modules and applications on your local machine." -ForegroundColor White
Write-Host ""
Write-Host "  Usage:" -ForegroundColor Gray
Write-Host "    elx install" -ForegroundColor White
Write-Host "    or" -ForegroundColor Gray
Write-Host "    elx i" -ForegroundColor White
Write-Host ""
Write-Host "  Note:" -ForegroundColor Yellow
Write-Host "    Execute this command after successfully setting up the installer" -ForegroundColor White
Write-Host "    and configuring all dependencies." -ForegroundColor White
Write-Host ""

Write-Host "===========================================================" -ForegroundColor Blue

# Section: Help Command
Write-Host "COMMAND: --help" -ForegroundColor Green
Write-Host "===========================================================" -ForegroundColor Cyan
Write-Host "  Displays assistance directly in the console for any elx command." -ForegroundColor White
Write-Host ""
Write-Host "  Usage:" -ForegroundColor Gray
Write-Host "    elx --help" -ForegroundColor White
Write-Host ""
Write-Host "  What it does:" -ForegroundColor Yellow
Write-Host "    Lists all available elx commands along with their descriptions." -ForegroundColor White
Write-Host ""

Write-Host "===========================================================" -ForegroundColor Blue

# Footer: Copyright
Write-Host ""
Write-Host "For more details, visit the official elx documentation!" -ForegroundColor Magenta
Write-Host "Documentation: $docuPath" -ForegroundColor White
Write-Host ""
Write-Host $copyright -ForegroundColor Cyan
Write-Host "===========================================================" -ForegroundColor Blue
