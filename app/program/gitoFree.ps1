if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
    # If not admin, restart PowerShell as admin
    $newProcess = New-Object System.Diagnostics.ProcessStartInfo "PowerShell";
    $newProcess.Arguments = "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"";
    $newProcess.Verb = "runas"; # Force PowerShell to run as administrator
    [System.Diagnostics.Process]::Start($newProcess) | Out-Null;
    Exit;
}

# PowerShell-Skript zum Klonen eines Git-Repositories
$gitUrl = "https://Lynquity:<Token>@github.com/Lynquity/free-gito"
$clonePath = "C:/free-gito"

# Führe den git clone Befehl aus
git clone $gitUrl $clonePath

Start-Sleep 1

& C:/free-gito/install.bat