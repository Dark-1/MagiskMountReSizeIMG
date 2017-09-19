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
   
    
  
###### EnJoY ...  :smiley: ######   
  
#### Credit's ####
  
Thanks **topjohnwu** for Magisk & for the code in "magisk-module-template" , could not have done without it.  

----------

   
.
