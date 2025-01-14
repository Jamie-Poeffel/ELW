# Check if the script is running as administrator
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
    # If not admin, restart PowerShell as admin
    $newProcess = New-Object System.Diagnostics.ProcessStartInfo "PowerShell";
    $newProcess.Arguments = "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"";
    $newProcess.Verb = "runas"; # Force PowerShell to run as administrator
    [System.Diagnostics.Process]::Start($newProcess) | Out-Null;
    Exit;
}

Write-Host "Running with admin privileges..."

$systemPath = "C:/windows/system32/"

$elx = $systemPath + "elx.bat"

$elw = $systemPath + "ELW"


if ((Test-Path -Path $elx))
{
    Remove-Item -Path $elx -Force

    Write-Host "file elx.bat removed"    
}
else{
    Write-Error "
    path $elx does not exist please install and setup first and then delete"
}

if ((Test-Path -Path $elw))
{
    Remove-Item -Path $elw -Recurse -Force

    Write-Host "dir removed"
}else {
    Write-Error "
    path $elw does not exist please install and setup first and then delete"
}


Start-Sleep -Seconds 1

exit
