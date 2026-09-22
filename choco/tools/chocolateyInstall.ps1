$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = 'goport'
  url64bit      = 'https://github.com/muhammad-deve/GoPort/releases/download/v0.1.5/goport-windows-amd64.exe'
  checksum64    = '9f825a7981116c0dcfaa6a1d6b17c632d24adb1d1c7d4f9973185061db24d48f'
  checksumType64= 'sha256'
  fileType      = 'exe'
  silentArgs    = ''
}

Get-ChocolateyWebFile @packageArgs -File "$env:ChocolateyInstall\bin\goport.exe"
