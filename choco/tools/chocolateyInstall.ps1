$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = 'goport'
  url64bit      = 'https://github.com/muhammad-deve/GoPort/releases/download/v0.1.0/goport-windows-amd64.exe'
  checksum64    = '1d75d0ee8153dce87c957302127bbcb7f03eeb5c6099e132ae7c5c71c1ae7e78'
  checksumType64= 'sha256'
  fileType      = 'exe'
  silentArgs    = ''
}

Get-ChocolateyWebFile @packageArgs -File "$env:ChocolateyInstall\bin\goport.exe"