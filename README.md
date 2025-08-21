# HighDigitSAMs Ultimate Compilation
![logo](/images/logo.jpg)
A fork of [HighDigitSAMs](https://github.com/Auranis/HighDigitSAMs) mod for DCS with lots of improvements

## Table of Contents
- [About](#-about)
- [Contributors and legal](#-contributors-and-legal-information)
- [How to Install](#-how-to-install)
- [Improvements over origin](#-improvements-over-origin)
- [SkynetIADS integration](#-skynet-iads-integration)
- [Known issues](#-known-issues)
- [Content](#-content)
- [Changelog](#-changelog)
- [FAQ](#-faq)

## 📢 About

**HighDigitSAMs Ultimate Compilation** is a project based on the two mods ([HighDigitSAMs](https://github.com/Auranis/HighDigitSAMs) and [SAM Pack](https://forum.dcs.world/topic/275571-sam-sites-asset-pack-a-3d-assets-mod-to-populate-you-sam-sites-farp-and-other-bases)) and incorporating the work of many people from the DCS forum. This mod has **backward compatibility** with any version of these two mods.   

## 🧑‍🤝‍🧑 Contributors and legal information
This mod is a modified version of [HighDigitSAMs](https://github.com/Auranis/HighDigitSAMs) mod by [Auranis](https://github.com/Auranis), Copyright (c) 2020 Auranis.  
United with [SAM Sites Asset Pack](https://forum.dcs.world/topic/275571-sam-sites-asset-pack-a-3d-assets-mod-to-populate-you-sam-sites-farp-and-other-bases) mod by [LetMePickThat](https://github.com/LetMePickThat) and ERO.  
**3D models** by ERO.   
**Liveries** by [flag02004](https://forum.dcs.world/profile/39074-flag02004).    
This product is distributed under a **MIT license**. You can review the original license agreement [here](https://github.com/Auranis/HighDigitSAMs/blob/main/LICENSE).

## 💻 How to Install
### ⚠️ Remove/disable other instances of HighDigitSAMs and SAM Pack mods before installation
Simply copy the **Mods** folder into your C:\Username\Saved Games\DCS folder, or use OVGME to install the files there.  

## 🚀 Improvements over origin
- Static objects are implemented as air defense units (for templates support)
- Fixed bug with maximum shooting range of SAM Sites
- Fixed bug with disappearance of SA-10B (S-300PS) 30N6 TR when destroyed
- Fixed bug SA-21 (S-400) complex not working with 92N6E mast track radar
- Fixed SA-22 (Pantsir-SM) crazy recoil
- Fixed SA-22 (Pantsir-SM) no lock warning on RWR
- Fixed SA-22 (Pantsir-SM) doesn't show in **Player Drivable** subcategory
- Fixed SA-17 (Buk-M2) TELAR not working
- Added liveries for some SAMs
- Added launch sounds for all missiles
- Added engine sound for all vehicles (exclude masts)
- Added extra liveries
- Added radar sounds for all SR
- Added SA-20B (S-300PMU-2) mast TR
- Added SA-10A (S-300PT) launcher with 5V55K missile (47 km range)
- Added 40N6E missile for SA-21 (S-400) complex (experimental)
  > Detailed information about this missile is classified. Missile might me too overpowered
- Improved flight model and trajectory of all missiles:
  - No instant turning after launch
  - No crazy missiles turns at low speeds
  - Realistic missiles energy loss
     > Bad interception abilities at maximum ranges
- Added support of [Skynet-IADS](https://github.com/walder/Skynet-IADS) (see [Skynet IADS integration](#🤖-skynet-iads-integration))

## 🤖 Skynet IADS integration
1. In order for the Skynet to correctly identify the SAM Site, the group leader **must be** Big Bird SR for S-300PT/PS/PMU1/PMU2, S-400 and Bill Board SR for S-300V/VM/V4. Otherwise IADS integration is not guaranteed
    > Your SAM Site with wrong group leader might be seen as "RADDEST" in Skynet debug menu

2. Use my fork of Skynet IADS with [CurrentHill](https://www.currenthill.com/currenthill-milsim) and HighDigitSAMs SAM sites support: [click](https://github.com/HFXLegion/Skynet-IADS)

## 🪲 Known issues
- 9S32 "Grill Pan" ("Imbir") SA-12 (S-300V) TR has 90 deg rotated model
    > Temporary fixed with replacement by 9S32M model
- Missiles have no radio command guidance
    > Combined guidance does not exist in DCS


## 📚 Content

### SAMP/T Complex (WIP)
This is the ground version of the Aster series of missiles. These also exist on ships like on the British Type 45 destroyer.
For a battery you need the MGE, ME, one of the radars and of course at least one launcher. The MC is optional but does not add any functionality in DCS.
IRL the MC adds a datalink functionality, akin to the ICC for the MIM-104 Patriot.
One battery can have up to 6 launchers IRL.

#### Radars
There is the ARABEL radar which is most common but has lacking performance for ballistic intercepts
There is also the Ground Fire 300 radar which has greatly increased performance and just much better

#### Missiles
Modeled right now are the Aster 30 Block 1, Block 1NT and Block 2
Block 1 is good up to 20km in altitude and 120km in range
Block 1NT gives it a better seeker and possibly a better booster increasing the altitude coverage to 25km and the range to 150km
Block 2 is completely different and more akin to the US' THAAD. It can intercept targets up to 200km away and up to 70km in altitude
Keep in mind that this has to be modeled within DCS' restrictions so its not entirely accurate to what it could do IRL

### Polyana-D4M1 C2 Vehicle
This wheeled command vehicle is perfect for Skynet users to use as a node for their IADS.  
3D model by ERO.  

### S-300PT/PS (SA-10A/B)
The S-300PT was first SAM in S-300 series, armed with 5V55K missile with maximum range of 47 km (25.38 nm). S-300PS is more common and already implemented in DCS. This variant of SA-10B Grumble provides a bit less powerful missile 5V55R and 5V55RUD with 75 km (40 nm) and 90 km (48.6 nm).

### S-300V (SA-12 Gladiator/Giant) Complex (contributed by LetMePickThat)
The S-300V was a tracked, mobile area defense SAM with a particular focus on countering ballistic missiles. It features SARH guidance for the 9M82 anti-ballstic missile, and the 9M83 anti-aircraft.

### S-300PMU-1 (SA-20A Gargoyle) Complex  
This upgraded version of the S-300 added ABM capability and the long range 48N6 missile to the advanced S-300 complex.  
All components labelled as SA-20A in the mission editor.  
Now includes a truck-mounted 30N6 radar, 3D model by ERO.  

### S-300PMU-2 (SA-20B Gargoyle) Complex  
This incremental upgrade from the S-300PMU-1 features improved ABM capability and increased range.  
All components labelled as SA-20B in the mission editor. 3D models by ERO.  
  
### S-300VM (SA-23 Gladiator/Giant) Complex (contributed by LetMePickThat)
This upgraded variant of the S-300V features Track-Via-Missile guidance and the extremely capable 9M82M anti-ballstic missile, in addition to the 9M83M missile, all on a tracked chassis.    
All components labelled as SA-23 in the mission editor, complete with custom 3D models created by ERO.  

### S-400 (SA-21 Growler) Complex (contributed by LetMePickThat)
Lots of information about this complex is classified.  
This upgraded variant of the S-300V features Track-Via-Missile guidance and the extremely capable 9M82M anti-ballstic missile, in addition to the 9M83M missile, all on a tracked chassis.    
All components labelled as SA-23 in the mission editor, complete with custom 3D models created by ERO.  

### S-300V4 (SA-23 Gladiator/Giant) Complex (contributed by LetMePickThat)
Lots of information about this complex is classified.  
This upgraded variant of the S-300VM features the extremely capable 9M82MV anti-ballstic missile, in addition to the 9M83MV missile, all on a tracked chassis.   
All components labelled as SA-23 in the mission editor, complete with custom 3D models created by ERO.  

### 9K317 Buk-M1-2 (SA-17 Grizzly) Transporter/Erector/Launcher and Radar, 9A310M1-2  
This upgraded Buk TELAR carries a more capable radar, and fires the 9M317 missiles, which is longer-ranged and more agile than the original 9M38 Buk missile.  
This variant has an improved ability to defend itself from anti-radiation missiles. ABM capability and support units coming to the complex soon!  

### V-759/5V23 Missile for S-75 (SA-2) Complex  
This late-production missile for the SA-2 has an improved warhead, maneuverability and G-tolerance compared to previous versions, and was widely exported in the 1970s.  
Note: This missile is modeled very differently from the default DCS version of the SA-2. Its guidance and maneuverability have been tuned based on documentation to hopefully much better reflect the actual capabilities of this system. Do not expect this missile to miss you if you do not defend properly!  
Add to your SA-2 complex by selecting the launcher for the V-759 in the mission editor.  

### V-601P/5V27 Missile for S-125 (SA-3) Complex  
This upgraded missile for the SA-3 features a number of improvements to the guidance and rocket motor.  
Note: this version performs much more closely to the historical SA-3 than the DCS version, and as such it is generally much less dangerous to face.  
Add to your SA-3 complex by selecting the launcher for the V-601P in the mission editor.  

### HQ-2 Missile  
This Chinese-developed copy of the S-75 makes a number of upgrades to its performance, particularly guidance, overload capability and kinematic performance.  
Note: Associated radar systems not included until I can figure out a way to add RWR symbology without breaking IC.  
Add to your SA-2 complex by selecting the HQ-2 launcher in the mission editor, available to China, Iran, and CJTF Red.  

### 9K338 Igla-S (SA-24) MANPADS
The 9K338 system features significant kinematic and countermeasure resistance improvements from the previous 9K38 Igla. It fires the 9M342 missile which has an average speed of 650 meters per second.  
Selectable in the mission editor as the SAM SA-24 Igla-S.  

### 9K34 Strela-3 (SA-14) MANPADS
The 9K34 system was a major improvement over the previous 9K32 Strela-2, featuring a limited all-aspect engagement capability and improved fusing.  
It saw service around the world from the late 1970s onward.  
Selectable in the mission editor as the SAM SA-14 Strela-3.  

### 9K32 and 9K32M Strela-2 (SA-7 and SA-7B) MANPADS
The 9K32 system was the first man-portable SAM system to enter serial production in the Soviet Union, starting in 1970.  
Both versions are rear-aspect only, with the SA-7B featuring an improved seeker, warhead, and rocket motor.  
For mission makers: use Average skill level and face the units away from the expected threat axis, so that they will have the best shot parameters.  

## 📃 Changelog
See **[CHANGELOG.md](/CHANGELOG.md)**

## 💬 FAQ
#### Do you plan to continue supporting this fork?
I can't give you an exact answer, but I'll definitely be updating it in a couple of months.

#### Can you fix 9S32 "Grill Pan" ("Imbir") S-300 TR?
No, unless i get origin models by Auranis or ERO

#### Why didn't you make TVM as a way to guide missiles?
Using only TVM is not realistic (final section is always in SARH mode). There is no combined guidance (TVM + SARH) in the game

#### Any radio command guidance with SARH?
I tried to make a software hack through the ARH guidance method, but failed due to incorrect operation of track radars with ARH missiles in DCS.

#### Why I can't lock target via radar menu playing SA-22 (Pantsir-SM)?
Unfortunately, in DCS the AI's ability to lead multiple missiles eliminates the ability to lock targets via the radar menu (for some unknown reason)