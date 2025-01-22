param (
    [switch]$AdminStarted  # Prevent infinite loops
)

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "Git is not installed or not available in PATH." -ForegroundColor Red
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
            Start-Sleep -Milliseconds 1500
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
