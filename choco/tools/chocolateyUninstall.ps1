$ErrorActionPreference = 'Stop'

# chocolateyInstall.ps1 downloads goport.exe straight into Chocolatey's bin
# folder (no shim), so Chocolatey can't remove it on its own.
$exe = Join-Path $env:ChocolateyInstall 'bin\goport.exe'

if (Test-Path -LiteralPath $exe) {
  try {
    Remove-Item -LiteralPath $exe -Force
  } catch {
    throw "Could not remove $exe. Stop any running goport (Ctrl+C in its window) and try again. $_"
  }
} else {
  Write-Warning "$exe was not found; nothing to remove."
}
