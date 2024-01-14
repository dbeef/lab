#!/bin/bash

wget https://artifacts.picoctf.net/c/285/win.zip

# The solution that worked:
# Edit win/pico_Data/Managed/Assembly-CSharp.dll with dnSpyEx; under EvolveGames, find the player controller and change in a way
# the player can always jump, even when not touching the ground.
# Compile (add other DLLs from this folder in dnSpyEx, otherwise will fail), run, fly to the flag.

# Other approaches I tried:
#
# First of all, I dumped all assets with AssetRipper - I wanted to re-package the project but with a fly hack.
#
# Then created a new project in Unity, copied all files (besides the scripts starting with 'Unity.'),
# modified the scene so the invisible colliders would be away.
# There was a problem with importing unity.ui package, I opened the Packages window, uninstalled and reinstalled it.
# I ran modified project but nothing would happen when touching the flag. Probably something messed up when copying the files.
#
# Anyway, in the sources there was 'Mystery' object referenced. It had an ID of 39.
# I found it in other project files by grepping, at this point I have found the flag "WELCOME_TO_UNITY!!" but out of
# a minor lack of attention - I didn't take it for a flag. Would have saved some time.
#
# Then I switched to Windows, but before the final solution with dnSpyEx, I tried CheatEngine.
#
# I got to the point where I could change current item by changing the value in CheatEngine - assumed the first item will have an enum/index of zero,
# then started scanning the memory assuming each next item would increment the value.
#
# Same approach in regards to position/vertical velocity didn't work. Maybe if I knew the span of velocity values when jumping I could use that for scanning.
