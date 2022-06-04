## Set the title for the Terminal Window (because it always defaults back) ##
$host.UI.RawUI.WindowTitle = "Administrative PowerShell"

## Declare Null Variables to be filled in below $$
Set-Variable -Name "ConsoleColor" -Value "" -Description "ConsoleColor" -PassThru
Set-Variable -Name "TextColor" -Value "" -Description "TextColor" -PassThru
Set-Variable -Name "ErrorColor" -Value "" -Description "ErrorColor" -PassThru

## Get Console Properties and Set Variable Values for use in the 'if' Statement ##
	
Set-Variable -Name "ConsoleColor" | {
	Get-Host -InformationVariable BackgroundColor | Write-Output
} -PassThru
	



Get-Host -InformationVariable ForeGroundColor | Write-Output -InputObject $TextColor | Write-Host "$TextColor"
Get-Host -InformationVariable ErrorForeGroundColor | Write-Output -InputObject $ErrorColor | Write-Host $ErrorColor



if ($ConsoleColor = = "Black" { AND | OR } $TextColor == "Black") {
	$host.UI.RawUI.BackgroundColor = "DarkBlue"
	$host.UI.RawUI.WhiteColor = "White"
	$host.UI.RawUI.ErrorForegroundColor = "DarkGray"
	$host.UI.RawUI.___Color = "color"
}



# Set-Variable -Name "___Color" -Value "" -Description "___Color" -PassThru
# Get-Host -InformationVariable -___Color | Write-Output -InputObject $___Color
# $host.UI.RawUI.___Color = "color"
# $host.UI.RawUI.BackgroundColor.GetType()
# [System.Enum]::GetValues() | ForEach-Object {Write-Host $_ -ForeGroundColor $_}
