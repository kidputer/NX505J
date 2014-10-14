NX505J
======

**CM11 for Nubia Z7 Max**
**Description and Credits**

This is CM11 for the Nubia Z7 Max Phone. It has been well tested including operating it for 1 month
with no crashes. It is the original work of the Master Ace ROM compiler lwang. http://weibo.com/lwanggg
developer credits going out to to syhost，zhaochengw.  And credits to kidputer for setting
up this GitHub project to flow rapidly into a hopefully official CM soon. We will be presenting the device
tree configuration as well as the kernel repository just as soon as these lastest issues are resolved. 

**Service Notes**

Prior to loading cm11 ROM into Nubia Z7 Max it is most advisable to Apply
both Nubia.cn updates 1.29 and 1.38 to the phone as BOTH update the
radios.  The radios were not flashed properly at the factory in most
cases. If you don't update radios software you may only get
2G in some cases and not 3G, H or H+.
Also note per Nubia.cn firmware documentation notes,
only one 3G or 4 G LTE connection can exist at one time. Specify in
|Settings|MultiSIM| in cm11 which card has current data connection. In
|Settings|MobileNetworks| you need to set one card as GSM only or CDMA
only and the other can have 3G or H+ or LTE. So far I have had these
settings work fine:

Verizon CDMA only voice with
T-Mobile GSM/WCDMA/LTE Voice/Data also with ATT or Cricket Data 2G.
*
ATT GSM only voice with
T-Mobile GSM/WCDMA/LTE Voice/Data also with ATT, Walmart, Cricket Data at H, H+, 3G
*
T-Mobile GSM only voice with
ATT GSM/WCDMA/LTE Voice/Data also with T-Mobile, Walmart, Cricket Data at H, H+, 3G
*
More are possible but I only have a limited number of carrier and SIM for test. Also Verizon Test
completed before last radio software update so I need to repeat.

Once these Nubia.cn updates have been applied the you can wipe phone data
areas using CWM v6.0.5.0 and apply cm11_NX505J_3.0 posted here.  Don't forget CM not
permitted to include some Google Applications.  You should insall gapps.zip
If you need the Google Applications mentioned above.  Check the wiki for rooting
help with the Nubia Z7 Max and some help with loading CM11. Please don't break your phone
If you need help bring it to a person who knows SU, CWM and CM.

**Current Issues**

Gallery Thumbs blank, Messaging crashes on opening mms message.  

Please report any additional issues you find so I can report to the compiler lwang.

**Updated this version**

dialer search dialer stop, 
cpu opimizations

**Updated last version**

Repair rely on network positioning in Google services
Repair dial interface search flash back
Optimize power consumption

**Updated Previous Versions**

Repair Card 2 ringtones and display settings
Remove the built-in Google services , please download and install Magic Fun Center
Repair depends on the GMS software can not locate a network problem
Update the camera , display, vibrator drive
WIFI drivers and firmware updates
Fix the problem linux kernel random number generator can not be used
Repair after the restart WIFI and Bluetooth MAC address change problems
Add Nubia infrared applications ( from @ dss16694 local friends )
GPS positioning and re- optimizing network
UI response speed optimization system
CDMA signal optimization
Remove some useless services and related libraries
Add vibrator intensity settings ( Sound Settings )
Rewrite part dual card logic , optimize mobile network settings
CDMA and GSM cards simultaneously use, you can use the card as a data card GSM (2G)
Optimized CPU / GPU performance , running points, more fluid game
Optimize temperature control module
The screen flashes when some software or video software solution to repair ( to be tested )
Repair some telecom card appears "No roaming Prompt" ( with test )

**Please Report Bugs**

Please don't forget to post any issues you find with the software.  Make sure to look over
The known issues from above and make sure you know limitations of multi-radio use and how to
set multi radio use explained in this readme.  In addition to rooting help we will also make 
a multi-radio configuration guide in the Wiki.

**Version Truth Table**

Compiled Oct 12, 2014 = = cm11_NX505J_3.0 = = 11-20141012-UNOFFICIAL-nx505j

Compiled Sept 17, 2014 = = cm11_NX505J_2.0 = = 11-20140917-UNOFFICIAL-nx505j

Compiled Sept 01, 2014 = = cm11_NX505J_1.0 = = 11-20140901-UNOFFICIAL-nx505j
