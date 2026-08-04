<a id="readme-top"></a>

<!-- PROJECT SHIELDS -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![GPL 3.0 License][license-shield]][license-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/Sadowski-Krystian/Blue-Archive-Theme-KDE-Plasma">
    <!-- Jeśli masz logo, podmień link niżej. Jeśli nie, możesz na razie usunąć ten tag <img> -->
    <!-- <img src="images/logo.png" alt="Logo" width="80" height="80"> -->
  </a>

  <h3 align="center">KDE Blue Archive Theme</h3>

  <p align="center">
    A global theme for KDE Plasma inspired by the clean, bright, and vibrant UI of the Blue Archive game.
    <br />
    <br />
    <a href="https://github.com/Sadowski-Krystian/Blue-Archive-Theme-KDE-Plasma/issues">Report Bug</a>
    &middot;
    <a href="https://github.com/Sadowski-Krystian/Blue-Archive-Theme-KDE-Plasma/issues">Request Feature</a>
  </p>
</div>

<div align="center">
  <a href="https://count.getloli.com/">
    <img src="https://count.getloli.com/@Sadowski-Krystian-Blue-Archive?name=Sadowski-Krystian-Blue-Archive&theme=original-new&padding=7&offset=0&align=center&scale=1&pixelated=1&darkmode=0" height="100">
  </a>
</div>

<!-- ABOUT THE PROJECT -->

## License

The source code, scripts, and configuration files of this KDE Plasma theme are licensed under the **GNU General Public License v3.0 (GPL-3.0)**.

⚠️ **ARTWORK & IP EXCEPTION:** The GPL-3.0 license DOES NOT apply to the wallpaper image assets, official game assets, and specific trademarks included in this repository. All rights to the character artwork, background images, and trademarks are reserved by their respective creators and owners. See the [License, Copyright & Credits](#copyright) section for details.


### 🚀 Roadmap

The ultimate goal is to build a fully featured KDE Global Theme. Here is what is planned:

- [x] Base Color Scheme
- [x] Sounds (Features official audio assets from Blue Archive. All rights reserved to Nexon Games and Yostar. Created out of love for the game as a 100% non-profit fan project.)
- [x] Plasma Theme (Panels, Widgets, Taskbar)
- [x] Window Decorations (Aurorae / Buttons)
- [ ] ~~Custom Application Style (Kvantum)~~
- [x] Custom folder icon (Schale folder official icon. All rights reserved to Nexon Games and Yostar.)
- [x] Lock/Login Screen wallpapers (~~SDDM Theme~~ - deleted in KDE Plasma 6.6)
- [x] Desktop wallpaper
- [x] Splash Screen - Is provided in theme config by [this repository][ARONA-SPLASH] 
- [x] Plymouth (boot) Screen


### 🚀 Quick Install (One-Liner)
To install the entire theme automatically, simply open your terminal and paste this command:

> **Note:** This quick install script does not include the Plymouth boot theme. You need to install it manually.

```bash
curl -sSL https://raw.githubusercontent.com/Sadowski-Krystian/Blue-Archive-Theme-KDE-Plasma/refs/heads/main/install.sh | bash
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### 🐧 Manual Plymouth Theme Installation

This repository includes two custom Plymouth boot animations:
* **`bluearchive_steam_ver`** - Is using steam deck boot animation from points shop
* **`bluearchive_arona`** - A lightweight, continuous looping animation with Arona.

Choose your preferred version and follow these steps in your terminal:

**Step 1: Copy the theme to your system's Plymouth directory**
*(Replace `<theme_name>` with either `bluearchive_steam_ver` or `bluearchive_arona`)*.
```bash
sudo cp -r plymouth/<theme_name> /usr/share/plymouth/themes/
```
> **Note:**  Ensure the you are inside the cloned repository.

**Step 2: Set the theme as default and rebuild initramfs**

*For Fedora / Bazzite / RHEL:*
```bash
sudo plymouth-set-default-theme -R <theme_name>
```
> *(The -R flag automatically rebuilds the initramfs via Dracut).*

*For Ubuntu / Debian / Linux Mint:*

```bash
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/<theme_name>/<theme_name>.plymouth 100
sudo update-alternatives --config default.plymouth
sudo update-initramfs -u
```


<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

* [![KDE][KDE-shield]][KDE-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Copyright

Please note that the images included are not mine. Permission has been granted by the original artists exclusively for use within this KDE theme. Reproduction, republishing, and use for AI training are strictly prohibited!

#### Intellectual Property
- **Steam Deck Boot Sequence:** Registered trademark and property of Valve Corporation.
- **Blue Archive Assets:** Character designs (Arona), audio files, and official logos (Schale) are the intellectual property of **Nexon Games** and **Yostar**.

#### Wallpaper Desktop
- Artwork by: [IV][COPYRIGHT-DESKTOP-ARTIST]
- [Original Source][COPYRIGHT-DESKTOP-SOURCE]

#### Wallpaper Lock/Login
- Artwork by: [HJ_penguin][COPYRIGHT-LOCK-ARTIST]
- [Original Source][COPYRIGHT-LOCK-SOURCE]

#### Steam Deck intro
- [Blue Archive Startup intro][STEAM-STARTUP]

#### Schale Logo Gif
- Schale Logo Gif is from this [Github Repository][ARONA-SPLASH] of Arona Splash Screen 

#### Arona wallpaper
- Arona wallpaper used in Plymouth is from [moewalls.com][PLYMOUTH-WALLPAPER]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
[contributors-shield]: https://img.shields.io/github/contributors/Sadowski-Krystian/Blue-Archive-Theme-KDE-Plasma.svg?style=for-the-badge
[contributors-url]: https://github.com/Sadowski-Krystian/Blue-Archive-Theme-KDE-Plasma/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Sadowski-Krystian/Blue-Archive-Theme-KDE-Plasma.svg?style=for-the-badge
[forks-url]: https://github.com/Sadowski-Krystian/Blue-Archive-Theme-KDE-Plasma/network/members
[stars-shield]: https://img.shields.io/github/stars/Sadowski-Krystian/Blue-Archive-Theme-KDE-Plasma.svg?style=for-the-badge
[stars-url]: https://github.com/Sadowski-Krystian/Blue-Archive-Theme-KDE-Plasma/stargazers
[issues-shield]: https://img.shields.io/github/issues/Sadowski-Krystian/Blue-Archive-Theme-KDE-Plasma.svg?style=for-the-badge
[issues-url]: https://github.com/Sadowski-Krystian/Blue-Archive-Theme-KDE-Plasma/issues
[license-shield]: https://img.shields.io/badge/License-GPL_3.0-blue.svg?style=for-the-badge
[license-url]: https://github.com/Sadowski-Krystian/Blue-Archive-Theme-KDE-Plasma/blob/main/LICENSE

<!-- Badges dla technologii -->
[KDE-shield]: https://img.shields.io/badge/KDE-%231D99F3.svg?style=for-the-badge&logo=kde&logoColor=white
[KDE-url]: https://kde.org/

<!-- Copyrights -->

[COPYRIGHT-LOCK-ARTIST]: https://www.pixiv.net/en/users/16710545
[COPYRIGHT-LOCK-SOURCE]: https://www.pixiv.net/en/artworks/115226775
[COPYRIGHT-DESKTOP-ARTIST]: https://www.pixiv.net/en/users/72896190
[COPYRIGHT-DESKTOP-SOURCE]: https://www.pixiv.net/en/artworks/111576669
[STEAM-STARTUP]: https://shared.fastly.steamstatic.com/community_assets/images/items/3557620/5/movie_large/7b6e3a5b503f415b6323e4295edfb645.webm
[ARONA-SPLASH]: https://github.com/Machillka/arona-splash-theme
[PLYMOUTH-WALLPAPER]: https://moewalls.com/anime/arona-in-classroom-blue-archive-live-wallpaper/