Use G_ROM_FlexFuel_V1.2_Release.bin as a stock ROM with flex fuel added. Ready to flash.

Patcher Supports ROM IDs:

-60E0FC00

-60E0FB00

If your ID is not supported, shoot me a line... let's work on changing that.

Features:

-Flex Fuel, no fuel map tuning needed

-Immobilizer Removal

-Timing maps scaled by ethanol content

-Extended logging PIDs

-More to come...

To use the patching tool:

-Unzip folder contents to a folder

-Move your original ROM into this folder, as well as the G_ROM_FlexFuel.mot file found in the "Debug" folder in this repository

-Open a Command Prompt window in that folder

-Run the G_ROM_FlexPatcher.exe with the arguments "G_ROM_FlexFuel.mot ORIGINAL_ROM_FILE_INPUT.bin G_ROM_FLEX_PATCHED_ROM_OUTUT.bin" The command should look something like this: G_ROM_FlexPatcher.exe G_ROM_FlexFuel.mot 60E0FC00_NoImmo_RevLim_PatchBase.bin patch_out_NEW.bin

-The patch tool will tell you if it was a success or if it failed



NOTE: USE ALL OF THIS AT YOUR OWN RISK
