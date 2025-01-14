param (
    [switch]$AdminStarted  # Prevent infinite loops
)

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "Git is not installed or not available in PATH." -ForegroundColor Red
    Exit 1
}

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
    Write-Host "Please update to new Version $onvers with command: elx -u / elx --update" -ForegroundColor Red
    Exit 1
}

$errorMSG = ""

# Check if running with Admin rights
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    if (-not $AdminStarted) {
        $adminProcess = Start-Process -FilePath "powershell.exe" `
            -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" -AdminStarted" `
            -Verb RunAs -PassThru -WindowStyle Hidden
        
        $dotsCount = 1
        Clear-Host
        
        while (-not $adminProcess.HasExited) {
            if ($errorMSG -ne "") {
                Write-Host $errorMSG -ForegroundColor Red
                Exit 1;
            }
            # Erzeuge so viele Punkte wie dotsCount
            $dots = "." * $dotsCount

            # Setze den Cursor an den Zeilenanfang und schreibe die Punkte

            Clear-Host

            Write-Host "`r$dots" -NoNewline

            # Erhöhe dotsCount, aber setze ihn bei 3 wieder zurück auf 1
            $dotsCount++
            if ($dotsCount -gt 3) {
                $dotsCount = 1
            }

            # Kleinerer Sleep für schnellere Animation
            Start-Sleep -Milliseconds 500
        }
        Clear-Host

        Write-Host "`Installation abgeschlossen!" -ForegroundColor Green
        Exit
    }
}

# PowerShell-Skript zum Klonen eines Git-Repositories
$gitUrl = "https://Lynquity@github.com/Lynquity/free-gito"
$clonePath = "C:/free-gito"
$defaultpath = "C:/"

try {

    
    # Führe den git clone Befehl aus
    git clone $gitUrl $clonePath
}
catch {
    $errorMSG += "Error while cloning gito: $_ `n" 
    Exit 1

}

try {

    Start-Sleep 1
    
    & C:/free-gito/install.bat
}
catch {
    $errorMSG += "Error while installing: $_ `n" 
    Exit 1

}

try {
    
    Set-Location $defaultpath
    
    Remove-Item $clonePath -Recurse -Force
}
catch {
    $errorMSG += "Error while clearing up: $_ `n" 
}
