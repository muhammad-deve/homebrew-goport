$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = 'goport'
  url64bit      = 'https://github.com/muhammad-deve/GoPort/releases/download/v0.2.0/goport-windows-amd64.exe'
  checksum64    = '4581ba4226eb4b08162b3029c6dbad2118b40630d74be9ff4ce2cdda66d7c044'
  checksumType64= 'sha256'
  fileType      = 'exe'
  silentArgs    = ''
}

Get-ChocolateyWebFile @packageArgs -File "$env:ChocolateyInstall\bin\goport.exe"
