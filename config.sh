##########################################################################################
# 
# Magisk
# by topjohnwu
# 
# This is Magisk Mount , UnMount & ReSize IMG ZIP for Users/Developers.
# By Dark1
# Profile :
# https://forum.xda-developers.com/member.php?u=7292542
# https://github.com/dark-1
# 
# 
# This File is Configuration File for Magisk Mount , UnMount & ReSize IMG ZIP
# 
##########################################################################################


###############################################
## Configuration Setting's                   ##
###############################################

# Set what you want to show when Flashing ZIP
print_msg()
{
  ui_print "*******************************"
  ui_print "            Message            "
  ui_print "*******************************"
}

# Only for DeBug'ing , Remove " # " from below.
#DeBugInfo=true

###############################################


###############################################
## While Mounting [MT]                       ##
###############################################
# 
# Here ReSizeing will be Before Mounting.
# 

# Mount Switch , MTSW
MTSW=true

# ReSizeMODE , MTRSMO
MTRSMO=0

# User Specified Size , MTRSMB
MTRSMB=64

###############################################


###############################################
## While UnMounting [UT]                     ##
###############################################
# 
# Here ReSizeing will be After UnMounting.
# 

# UnMount Switch , UTSW
UTSW=true

# ReSizeMODE , UTRSMO
UTRSMO=0

# User Specified Size , UTRSMB
UTRSMB=64

###############################################


###############################################
## ReSize Only [RO]                          ##
###############################################
# 
# Here Only ReSizeing will be Done , and will Ignore Mounting & UnMounting.
# If ROSW is set to true , then Mounting & UnMounting will Not be performed.
# 

# UnMount Switch , ROSW , If true then will OverWrite MTSW & UTSW , Hence Default is false
RSOSW=false

# ReSizeMODE , ROMO
RSOMO=0

# User Specified Size , ROMB
RSOMB=64

###############################################


###############################################
## End of Configuration Setting              ##
###############################################


###############################################
## Mount / UnMount Switch  [..SW]            ##
###############################################
# 
# To be Set For "MTSW" , "UTSW" & "ROSW". [..SW]
# 
# Set to " true " , To Allow Mount / UnMount .
# Set to " false " , To Prevent Mount / UnMount .
# 
# Default is " true " , For Both , "MTSW" & "UTSW". [..SW]
# And " false " For "ROSW".
# 
###############################################


###############################################
## ReSize Mode  [..RSMO]                     ##
###############################################
# 
# To be Set For "MTRSMO" , "UTRSMO" & "RSMO". [..RSMO]
# 
# Set to " 0 " , To Display InFo of Magisk IMG "magisk.img".
# Set to " 1 " , To ReSize to Default "64M" OR MoRe Depending on "Current Used Size".
# Set to " 2 " , To ReSize to "User Specified Size".
# Set to " 3 " , To ReSize to "Current IMG Size" + "User Specified Size".
# 
# Default is " 0 " , For All , "MTRSMO" , "UTRSMO" & "RSMO". [..RSMO]
# 
###############################################

###############################################
## User Specified Size   [..RSMB]            ##
###############################################
# 
# To be Set For "MTRSMB" , "UTRSMB" & "RSMB". [..RSMB]
# 
# All Number's Here Should be Multiple of " 4 " AND in MegaBytes[M].
# AND No Need to Specify character " M " OR " MB ", Just a Number.
# 
# IF ReSizeMODE is " 2 " ,
#          Then "User Specified Size" Should NOT be less-than "64MB" OR "Current Used IMG Size".
#          AND "User Specified Size" Need's to be Positive[+] Only.
#          No Need to Specify character " + ".
# IF ReSizeMODE is " 3 " ,
#          Then "Current IMG Size" + "User Specified Size" = "Total",
#          AND "Total" Should NOT be less-than "64MB" OR "Current Used IMG Size".
#          "User Specified Size" Can be Positive[+] OR Negative[-],
#          Hence Need to Specify character " + " OR " - ".
# 
# Default is " 64 " , For All , "MTRSMB" , "UTRSMB" & "RSMB". [..RSMB]
# 
###############################################


###############################################
## Example's                                 ##
###############################################
# 
# While Mounting , you want the "magisk.img" to be 80MB,
# then "MTRSMO" & "MTRSMB" will be :
# MTRSMO=2
# MTRSMB=80
# 
# Now , after Mounting the "magisk.img" ,
# And While UnMounting , you want the "magisk.img" to be Reduced by 12MB [-12MB],
# then "UTRSMO" & "UTRSMB" will be :
# UTRSMO=3
# UTRSMB=-12
# 
###############################################