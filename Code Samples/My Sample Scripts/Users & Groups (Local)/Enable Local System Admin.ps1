## This script is designed to enable the Windows default System Administrator local user account. This account has the highest possible privileges and is able to accomplish the tasks that normal admins unable to.

## PART 1: First we need to verify which editioni of Windows the system is running on, because the System Admin doesn't actually exist on the Home edition.

## PART 2: After the conditions are met and the variables have been established, the Admin account needs to be enabled and configured.

## PART 3: Mission accomplished. Inform user and eat cake.



{ ## Begin Script Part 1 ##
	$Win = Get-ComputerInfo
			-Property "WindowsEditionID"
			## This fancy variable assignment is telling PowerShell to figure out which Edition of Windows the machine is running (Home, Professional, Enterprise, etc) then whatever that word is, that word is assigned to $Win.
	If ($Win -match "Home")
	## This is the beginning of an "If/ElseIf" Condition, and this "If Statement" is set to identify whether or not the $Win variable we just setup is an exact match for "Home"
	## See side note at the bottom
	
	{
		Read-Host "This version of Windows does not support this script. Press Enter to Exit."
			## At this point the script has determined that the system is running Windows Home edition and that the script cannot continue.
		Exit
	} ## Adiós amigos
	
	
	ElseIf ($Win -notmatch "Home")
	## This is basically saying, "If it's anything but Home, we'll keep going."
	
	{ ## Now we establish the variables.
		$God = Administrator
		$Pass = Read-Host
					-Prompt
						"Enter a password for the System God."
					-MaskInput
					## This makes it so whatever the user types in is masked with asterisks so that "Pas$w0rd" becomes "********"
	} ## Variables have been un-varied.
} ## End Script Part 1 ##



{ ## Begin Script Part 2 ##
	Get-LocalUser
		-Name $God | Select-Object
		## When you use a pipe "|" to add Cmdlets to the same Pipeline, they chain together (obviously).
		## So by identifying the Admin user with "Get-LocalUser" followed by a "|" we are able to able to use the Cmdlet "Select-Object" to further manipulate the account.
		{
			Set-LocalUser
				-Property:Enabled "True"
				## The "-Property" parameter for this Cmdlet is the ultimate tool for making any and all changes to user accounts.
				## It's also the biggest waste of time you'd ever invest in if you try to use it for literally anything outside of Active Directory. Trying to find the actual names of the "Properties" for LOCAL users is almost impossible. Just trust me.
				## Seriously, I dont even know if I got THIS right and it should be that simple.
				-Password $Pass
				## Now we finally use that password variable we assigned to set $God's password.
		}
} ## End Script Part 2 ##


{ ## Begin Script Part 3 ##
	Read-Host -Prompt
		"Now you may become God, and have all the powers therein. Or Death, Destroyer of Worlds. Bringer of the End Times."
} ## Eat Cake ##



## The brackets on Part 3 weren't necessary at all, I just wanted a reason to insert "Eat Cake" in a way that looked appropriate.

## Side Note: Technically it's a "Conditional Logic Branch" but that terminology isn't typically used in PowerShell because this is scripting, not programming.