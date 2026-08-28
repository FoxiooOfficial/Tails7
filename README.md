# Tails7

<div align="center">
   <a href="https://github.com/FoxiooOfficial/Tails7">
       <img src="Resources/Logo/Logo.png" alt="Logo" width="50%">
   </a>
</div>

Tails7 is a modular, free, open-source Mode 7 engine for Clickteam Fusion 2.5+!

## Contents

- [About The Project](#about-the-project)
- [Technical Specifications](#technical-specifications)
- [Special Thanks](#special-thanks)
- [Requirements](#requirements)
- [Installation](#installation)
- [Support and Social Media](#support-and-social-media)
- [License](#license)

## About The Project

**Tails7 is a project I've been developing since 2025; its goal is to replace the outdated Mode 7 Ex extension from the early 2000s with a modern engine that performs better on newer hardware.**

Tails7 uses shaders to render the ground and polygons;
wait, polygons?
- Yes, Tails7 has a built-in example of simple polygons, but they are limited in terms of how points can be placed for the polygon to render correctly.

This engine is designed to be ported to other runtimes; it currently supports Windows, Android, iOS, and macOS;
*(note that a platform-specific DLC is required to port the game).*

**What if the GPU doesn't support shaders or supports them with limitations?**
- Windows:
   - When the game is rendered by the CPU *(DIB)*, a memory leak may occur due to the massive scale of objects, also Ground Render and Polygons are invisible;
   - When the game is rendered using Direct3D 8, objects that require shaders will be still invisible *(Ground rendering and Polygons)*, but no memory leak.
   - You can use Direct3D 8 *(not recommended)* for **partial functionality**, and for full support use Direct3D 9 or Direct3D 11.
- Android, iOS and macOS:
   - Not yet tested. 

In terms of "modularity", Tails7 relies on "modes" to determine how to calculate mapping, position objects on the screen, calculate distance, scale, rotate, etc. It's easy to add your own new mode.

## Technical Specifications

- The latest stable release is **R1.0.3_22.06.26a**;
- This description was last updated on **August 28, 2026**;
- You can find the tech demos on [Itch.io](https://foxioo.itch.io/tails7examples)
   - *(the code is terrible, but it shows off the engine's capabilities)*
- Do you need the documentation?
   - here's the [link](https://foxiooofficial.github.io/docs/tails7/Introduction.html).

## Special Thanks

I would like to sincerely thank them because the project would not work out:
- Sketchy / MuddyMole
- Linky
- Glace Sue
- Clickteam
- KYwoo
- PsichiX
- NaitorStudios

## Requirements

- **Clickteam Fusion 2.5:**
   - [Link to the standalone version](https://www.clickteam.com/clickteam-fusion-2-5-plus);
   - [Link to the Steam version](https://store.steampowered.com/app/1056780/Clickteam_Fusion_25_Addon/);
   - Required minimum Fusion build: **296.9**;
- **Tails7 requires that you have the "+" Fusion DLC; without it, you'll get an error when launching MFA:**
   - [Link to the standalone version](https://www.clickteam.com/clickteam-fusion-2-5);
   - [Link to the Steam version](https://store.steampowered.com/app/248170/?l=english);
- **The project must be set to Direct3D 9 or Direct3D 11 Display Mode! Otherwise, the calculations will not work!**
- **Basic knowledge of how to use Clickteam Fusion**
- **Foxioo's Shader Pack is installed**
   - [Link to the repository](https://github.com/FoxiooOfficial/FoxiooShaderPack)
   
## Installation

<details>
  <summary><b>Installation process</b></summary>
   <p>1. Press <b>Code</b> -> <b>Download ZIP</b>.<br></p>
      <img src="https://foxiooofficial.github.io/tails7-docs/media/objects/installation/1.png" alt="Installation: 1" width="100%">
   <br><br>
   
   <p>2. Choose the folder where you want to download the entire zip file.<br></p>
      <img src="https://foxiooofficial.github.io/tails7-docs/media/objects/installation/2.png" alt="Installation: 2" width="100%">
   <br><br>
   
   <p>3. Open the folder where the Tails7 zip file is located.<br></p>
      <img src="https://foxiooofficial.github.io/tails7-docs/media/objects/installation/3.png" alt="Installation: 3" width="100%">
   <br><br>
      
   <p>4. Extract the Tails7 zip file.<br></p>
      <img src="https://foxiooofficial.github.io/tails7-docs/media/objects/installation/4.png" alt="Installation: 4" width="100%">
   <br><br>
   
   <p>5. In your browser, now go to the GitHub page of the FSP package <b>(If you have FSP installed, skip to point 9)</b>.<br></p>
      <img src="https://foxiooofficial.github.io/tails7-docs/media/objects/installation/5.png" alt="Installation: 5" width="100%">
   <br><br>
   
   <p>6. Also click <b>Code</b> -> <b>Download ZIP</b> to download the shader pack that is needed for Tails7.<br></p>
      <img src="https://foxiooofficial.github.io/tails7-docs/media/objects/installation/6.png" alt="Installation: 6" width="100%">
   <br><br>
   
   <p>7. In Clickteam Fusion, go to <b>Tools</b> -> <b>Windows Explorer</b>, a window should open showing where Fusion is installed.<br></p>
      <img src="https://foxiooofficial.github.io/tails7-docs/media/objects/installation/7.png" alt="Installation: 7" width="100%">
   <br><br>
   
   <p>8. Move the "Foxioo Shader Pack" folder from the zip subfolder to the <b>Effects** folder where Fusion is installed and restart Fusion.<br></p>
      <img src="https://foxiooofficial.github.io/tails7-docs/media/objects/installation/8.png" alt="Installation: 8" width="100%">
   <br><br>
   
   <p>9. Return to the folder where you downloaded the project and open <b>Tails7.mfa</b>.<br></p>
      <img src="https://foxiooofficial.github.io/tails7-docs/media/objects/installation/9.png" alt="Installation: 9" width="100%">
   <br><br>
   
   <p>10. When <b>Tails7.mfa</b> opens in Fusion, run the Runtime.<br></p>
      <img src="https://foxiooofficial.github.io/tails7-docs/media/objects/installation/a.png" alt="Installation: 10" width="100%">
   <br><br>
   
   <p>11. <b>Congratulations! You have successfully installed the engine and can start working on your project/game!</b></p>
      <img src="https://foxiooofficial.github.io/tails7-docs/media/objects/installation/b.png" alt="Installation: 11" width="100%">
   <br>
   
</details>

## Support and Social Media
You can support the project or me by making a donation on [ko-fi](https://ko-fi.com/foxioo)<br>
Here you can find my [social media accounts](https://foxiooofficial.github.io/links.html)

<details>
  <summary><b>Star History Chart</b></summary>
   <br> <a href="https://www.star-history.com/?repos=FoxiooOfficial%2FTails7&type=date&legend=top-left">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/chart?repos=FoxiooOfficial/Tails7&type=date&theme=dark&legend=top-left" />
      <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/chart?repos=FoxiooOfficial/Tails7&type=date&legend=top-left" />
      <img alt="Star History Chart" src="https://api.star-history.com/chart?repos=FoxiooOfficial/Tails7&type=date&legend=top-left" />
    </picture>
  </a>
</details>

## License
This project is available under the terms of the **MIT** license

**TL;DR**:
- **You may:** use this code commercially, modify it, distribute it, and sublicense it.
- **You must:** include the original copyright notice with any copy of the project.
- **The author assumes no liability:** the code is provided "as is", without any warranty.

<details>
<summary><b>License Details</b></summary>

```text
MIT License

Copyright (c) 2025 Foxioo

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
 ```
</details>

<img src="https://foxiooofficial.github.io/tails7-docs/media/about/vanilla.png" alt="Vanilla">
