if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    # If not admin, restart PowerShell as admin
    $newProcess = New-Object System.Diagnostics.ProcessStartInfo "PowerShell";
    $newProcess.Arguments = "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"";
    $newProcess.Verb = "runas"; # Force PowerShell to run as administrator
    [System.Diagnostics.Process]::Start($newProcess) | Out-Null;
    Exit;
}

$groundPath = 'C:\'
$path = 'C:\ELW'

git clone 'https://github.com/Jamie-Poeffel/ELW.git' $path

Set-Location $groundPath
Set-Location .\ELW\app


& C:\ELW\app\install.bat

Set-Location $groundPath
 
Remove-Item C:\ELW -Recurse -Force

