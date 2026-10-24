$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = 'goport'
  url64bit      = 'https://github.com/muhammad-deve/GoPort/releases/download/v0.2.1/goport-windows-amd64.exe'
  checksum64    = '57db4686b80ea98811f16af0e0df04b1f39058519580f8d6c9dd5577eb6a8ac2'
  checksumType64= 'sha256'
  fileType      = 'exe'
  silentArgs    = ''
}

Get-ChocolateyWebFile @packageArgs -File "$env:ChocolateyInstall\bin\goport.exe"
