Get-WmiObject -Class Win32_Product | Select-Object -Property Name

$MyApp = Get-WmiObject -Class Win32_Product | Where-Object{$_.Name -eq "Free Tools"}

$MyApp.Uninstall()
