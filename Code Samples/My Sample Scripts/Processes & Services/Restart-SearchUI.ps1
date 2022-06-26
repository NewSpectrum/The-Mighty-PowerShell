<#===|  This Script is Incomplete  |===#>

function Restart-SearchUI {
	[CmdletBinding(SupportsShouldProcess)]
	param (
		$ShowPIDs
	)
	
	process {
		if ($ShowPIDs.ShouldProcess("Target", "Operation")) {
			condition
		}
		
		Get-Process -Name ("SearchUI","SearchIndexer") | Format-Table -Property ProcessName, ID


	}
}




. "C:\Windows\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy\SearchUI.exe"
