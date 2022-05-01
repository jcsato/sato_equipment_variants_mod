# Sato's Equipment Variants Mod

A mod for the game Battle Brothers ([Steam](https://store.steampowered.com/app/365360/Battle_Brothers/), [GOG](https://www.gog.com/game/battle_brothers), [Developer Site](http://battlebrothersgame.com/buy-battle-brothers/)).

## Table of contents

-   [Features](#features)
-   [Requirements](#requirements)
-   [Installation](#installation)
-   [Uninstallation](#uninstallation)
-   [Compatibility](#compatibility)
-   [Building](#building)

## Features

Adds visual variations of some vanilla items. Specifically:

- **[Basic Mail Shirt](./screenshots/BasicMailShirtItemCard.png)** now has variants cowls and without shoulder straps.
- **[Mail Hauberks](./screenshots/MailHauberkItemCard.png)** get a few more colors (white, yellow-red, and an existing-but-not-acquireable-in-game blue-white variant).
- **[Footman's Armor](./screenshots/FootmanArmorItemCard.png)** now has variants with cowls and shoulder straps.
- **[Scale Armor](./screenshots/ScaleArmorItemCard.png)** now has a cape variant.
- **[Noble Mail](./screenshots/NobleMailItemCard.png)** now has 10 additional color schemes (one for each noble house, including the cut castle head).
- **[Coats of Scale](./screenshots/CoatOfScalesItemCard.png)** can now show up with fancy red cloaks. Knights will never spawn with cloaked variants.
- **[Coats of Plate](./screenshots/CoatOfPlatesItemCard.png)** can now show up with fancy green cloaks. Knights will never spawn with cloaked variants.
- **[Mail with Lamellar Plating](./screenshots/MailWithLamellarPlatingItemCard.png)** will now show up in Green and Purple variants. Officers & Viziers will spawn with color-appropriate variants for their faction.

- **[Padded Dented Nasal Helmets](./screenshots/PaddedDentedNasalHelmetItemCard.png)** are now paintable.
- **[Full Helms](./screenshots/HoodedFullHelmItemCard.png)** now have (paintable!) hooded variants. Knights will never spawn with hooded variants.

## Requirements

1) [Modding Script Hooks](https://www.nexusmods.com/battlebrothers/mods/42) (v20 or later)
2) While not an explicit dependency, the Southern gear won't show up without the [Blazing Deserts DLC](http://battlebrothersgame.com/blazing-deserts-release/)

## Installation

1) Download the mod from the [releases page](https://github.com/jcsato/sato_equipment_variants_mod/releases/latest)
2) Without extracting, put the relevant `sato_equipment_variants_*.zip` file in your game's data directory
    1) For Steam installations, this is typically: `C:\Program Files (x86)\Steam\steamapps\common\Battle Brothers\data`
    2) For GOG installations, this is typically: `C:\Program Files (x86)\GOG Galaxy\Games\Battle Brothers\data`

## Uninstallation

1) Remove the `sato_equipment_variants_*.zip` file from your game's data directory

## Compatibility

**Important!** The mod is _mostly_ save-game compatible. You can add or remove it mid-campaign, but removing it after you have items with the new variants will cause those items to be invisible. This is most problematic on the armors, as they can't be "reset" with paints.

This should be generally compatible with other mods, although mods that change the same items _may_ have conflicting behavior.

This is unlikely to be compatible with the Legends mod, as it uses a unique layered armor system in which these items don't exist. You can achieve similar equipment variety with that system already, however, so this mod is somewhat redundant with Legends.

### Building

To build, run the appropriate `build_*.bat` script. This will automatically compile and zip up the mod and put it in the `dist/` directory, as well as print out compile errors if there are any. The zip behavior requires Powershell / .NET to work - no reason you couldn't sub in 7-zip or another compression utility if you know how, though.

Note that the build scripts reference the modkit directory, so you'll need to edit them to point to that before you can use them. In general, the modkit doesn't play super nicely with spaces in path names, and I'm anything but a batch expert - if you run into issues, try to run things from a directory that doesn't include spaces in its path.

After building, you can easily install the mod with the appropriate `install_*.bat` script. This will take any existing versions of the mod already in your data directory, append a timestamp to the filename, and move them to an `old_versions/` directory in the mod folder; then it will take the built `.zip` in `dist/` and move it to the data directory.

Note that the install scripts reference your data directory, so you'll need to edit them to point to that before you can use them.
