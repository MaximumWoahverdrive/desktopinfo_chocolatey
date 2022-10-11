$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.glenn.delahoy.com/downloads/desktopinfo/DesktopInfo3070.zip' # download url, HTTPS preferred

$packageName   = $env:ChocolateyPackageName
$unzipLocation = $toolsDir
$url           = $url
$validExitCodes= @(0, 3010, 1641)
$Checksum = '001f584be9bffa6af6e17e8e38f8f023a9a31dd165c800941b6898757bc8fbd6'
$ChecksumType = 'SHA256'

Install-ChocolateyZipPackage -PackageName $packageName `
                             -UnzipLocation $unzipLocation `
                             -Url $url `
                             -ValidExitCodes $validExitCodes `
                             -Checksum $Checksum `
                             -ChecksumType $ChecksumType
