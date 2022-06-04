##  READ FIRST  ##

# This entire document is a disaster of samples I've found online combined with snippets in VS Code. It's basic a syntax checker, then copy/paste resource. Feel free to add whatever you want to the bottom of the document rather than duplicates or merging changes.

# Eventually you'll find what works and why. When you do, please come clean up what you can really quickly and leave us a note about your glorious victory. 

# Type on my champions, type on. 


###########################################


function Pop-Bubbles {
	[CmdletBinding(SupportsShouldProcess)]
	param ($PointyThing)
}








############  Function Naming  ############
#                                         #
#  Use the command lines below to get a   #
#  list of approved verbs to use with a   #
#  singular noun when naming functions.   #
#                                         #
#  Get-Verb | Sort-Object -Property Verb  #
#                                         #
###########################################




Get-Command -Name Pop-Bubbles -Syntax

(Get-Command -Name Pop-Bubbles).Parameters.Keys





function Mount-Narwhal {

	[CmdletBinding(SupportsShouldProcess)]
    param (
    	[Parameter(Mandatory,
    						ValueFromPipelineByPropertyName)]
    	[string[]]$GumBalls
    )

	process {
		Write-Output $Tweezers
	}




}




function Invoke-Parmesan {

	param (
		[Parameter(Mandatory)]
		[string[]]$DustPans
		
	)

	param (
		[ValidateNotNullOrEmpty()]
		[string[]]$Fez = $RedSoloCup
	
	Write-Verbose -Message "If left blank, this still has a default value."
	)

    Write-Output $XylophoneKeys

}


function Send-Greeting
{
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$true)]
        [string] $Name
    )

    Process
    {
        Write-Host ("Hello " + $Name + "!")
    }
}
