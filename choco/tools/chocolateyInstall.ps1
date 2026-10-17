$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = 'goport'
  url64bit      = 'https://github.com/muhammad-deve/GoPort/releases/download/v0.1.8/goport-windows-amd64.exe'
  checksum64    = '2874c0d1c0d303e162e5f1b6c07e74193c7309b901ce79bda9fa364a50cec4fc'
  checksumType64= 'sha256'
  fileType      = 'exe'
  silentArgs    = ''
}

Get-ChocolateyWebFile @packageArgs -File "$env:ChocolateyInstall\bin\goport.exe"
