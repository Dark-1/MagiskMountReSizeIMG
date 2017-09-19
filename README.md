# Magisk Mount , UnMount & ReSize IMG #  

----------

### Magisk ###  
by **topjohnwu**  

----------

This is **Magisk Mount , UnMount & ReSize IMG** *ZIP* for Users/Developers.  
A.K.A. "**M2RI**" in Short For **MagiskMountReSizeIMG**.  
  
By **Dark**❶  
Profile @ XDA-Developers : [**Dark**❶](http://forum.xda-developers.com/member.php?u=7292542 "XDA Profile") .  
Profile @ GitHub : [**Dark**❶](https://github.com/dark-1 "GitHub Profile") .   
WebSite @ GitHub Pages : [**Dark**❶ WebSite](https://dark-1.github.io "GitHub WebSite") .   
  
**Magisk Mount & UnMount IMG** :-  
GitHub Pages Site : [**Magisk Mount & UnMount & ReSize IMG**](https://dark-1.github.io/ "GitHub Pages") .  
GitHub Repository : [**MagiskMountReSizeIMG**](https://github.com/dark-1/ "GitHub") .  
XDA Developers Thread : [**[Magisk] Magisk Mount & UnMount & ReSize IMG**](https://forum.xda-developers.com/apps/magisk/ "XDA Developers") .  
  

----------

----------

## Notes ##  
  
Useful for Users/Developers who wants to Edit Magisk IMG.  
   
This script is Depending on `Magisk` Binary File , Will Not work without IT.   
  
Module folder can be [Deleted/Added] to [Remove/Add] a Module.  
File can be [Edited/Modified/Deleted/Added] as per Users/Developers wish.  
  
This *ZIP* Mount's OR UnMount's on Different Condition's :  
1. If `magisk.img` is NOT Mount'ed , Then Mount `magisk.img` To `/Magisk` .  
2. If `magisk.img` is Mount'ed , Then UnMount `/Magisk` From `magisk.img` .  
   
This *ZIP* ReSize's on Different Mounting OR UnMounting ReSize Mode Condition's.  
   
   
Following is the **Pseudo** Code for Mount & UnMount :  
  
- IF [ ReSize Mode Only ] , Then :  
    - Will UnMount Magisk IMG If Mounted. ~ UnMount `/Magisk` -> `magisk.img` .  
    - This *ZIP* will ReSize Magisk IMG as-per User Requirement.  
- ELSE-IF [ `magisk.img` is NOT Mount'ed AND Mounting is Allowed ] , Then :  
    - This *ZIP* will ReSize Magisk IMG as-per User Requirement.  
    - Then , will Mount Magisk IMG. ~ Mount `magisk.img` -> `/Magisk` .  
- ELSE-IF [ `magisk.img` is Mount'ed AND UnMounting is Allowed ] , Then :  
    - This *ZIP* will UnMount Magisk IMG. ~ UnMount `/Magisk` -> `magisk.img` .  
    - Then , will ReSize Magisk IMG as-per User Requirement.  
- ELSE , Then :  
    - This *ZIP* will Do Nothing BUT Print some Sh*t .  
   
   
Following is the **Pseudo** Code for ReSize Mode :  
   
- CASE `ReSizeMode` IN  
    - 0 , Then :   
        - Display InFo of Magisk IMG `magisk.img`.   
    - 1 , Then :   
        - **ReSize** to Default `64MB` **OR** MoRe Depending on Current Used IMG Size.   
    - 2 , Then :   
        - **ReSize** to *User Specified Size* ,   
        - **BUT** *NOT* less than `64MB` **OR** Current Used IMG Size.   
        - *User Specified Size* Need's to be Positive[+] Only.   
    - 3 , Then :   
        - **ReSize** to *Current IMG Size* **+** *User Specified Size* **=** *Total*,   
        - **BUT** *Total* is *NOT* less than `64MB` **OR** Current Used IMG Size.   
        - *User Specified Size* Can be Positive[+] OR Negative[-].   
   
   
   
I have **Copied** the Code from "magisk-module-template" ZIP by **topjohnwu**.    
I have **Edited** some part of the Code to make it work.  
I have **Added** some part of the Code to make it work.  
I have **Added** some Necessary File(s).  
I have **Removed** Un-Necessary part of Code Because It is *Either* Not Used *OR* Not Needed.  
I have **Removed** Un-Necessary Directory(s) & File(s) Because It is *Either* Not Used *OR* Not Needed.  
I have **DoNe** Some Optimization to code.  
  
  
#### Explanation from `config.sh` : ####   
```   
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
```   
#### Example from `config.sh` : ####   
```   
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
```  
  
###### EnJoY ...  :smiley: ######   
  
#### Credit's ####
  
Thanks **topjohnwu** for Magisk & for the code in "magisk-module-template" , could not have done without it.  

----------

## Changelog ##  
    
#### v0.0 ####  
- Initialized.  
  
#### v1.0 ####  
- Initial Release.  
- Copied the Code.  
- Edited some part of the Code.  
- Added some part of the Code.  
- Added some Necessary File(s).  
- Removed Un-Necessary part of Code.  
- Removed Un-Necessary Directory(s) & File(s).  
   
.
