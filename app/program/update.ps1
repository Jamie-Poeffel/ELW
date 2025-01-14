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
            Start-Sleep -Milliseconds 300
        }
        Clear-Host

        Write-Host "`Installation abgeschlossen!" -ForegroundColor Green
        Exit
    }
}


# **Admin Script Execution**
$groundPath = 'C:\'
$path = 'C:\ELW'

# Start measuring the time for the first task (git clone)
try {
    git clone 'https://github.com/Jamie-Poeffel/ELW.git' $path
}
catch {
    $errorMSG += "Error while cloning ELW: $_ `n" 
    Exit 1
}

# Start measuring time for the installation script
try {
    Set-Location $groundPath
    Set-Location .\ELW\app
    & C:\ELW\app\install.bat
}
catch {
    $errorMSG += "Error while installing: $_ `n" 
    Exit 1
}

# Start measuring time for deleting the directory
try {
    Set-Location $groundPath
    # Now attempt to delete the directory again
    Remove-Item "C:\ELW" -Recurse -Force
}
catch {
    $errorMSG += "Error while cleaning up: $_ `n"     
}


