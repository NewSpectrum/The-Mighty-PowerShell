###################################
#                                 #
#          INTRODUCTION           #
#                                 #
#  This is an interactive script  #
#  that will create a new local   #
#  user on your PC                #
#                                 #
###################################


cd "C:\"


####################################
#                                  #
#            VARIABLES             #
#                                  #
#  In this section we use prompts  #
#  to help create variables for    #
#  the rest of the script          #
#                                  #
####################################


$Username = (Read-Host -Prompt "What will the Login Username be? (Letters and Numbers only, no Spaces or Special Characters)")
$FullName = (Read-Host -Prompt "What is the new user's Full Name?")

## PASSWORD & CONFIRMATION ##
