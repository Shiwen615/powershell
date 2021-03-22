($vol = Get-CimInstance -Class Win32_Volume | where{$_.drivetype -eq '2'}) &&
($Eject =  New-Object -comObject Shell.Application) &&
$Eject.NameSpace(17).ParseName($vol.driveletter).InvokeVerb(“Eject”) &&
echo "usb already eject"