# HexaGongs
This started life as a TMS WEB Core project created for the TMS Software Blog, starting with [this post](https://www.tmssoftware.com/site/blog.asp?post=1106). Some of the topics covered include the following.

1. Customizing UI elements so that they are *all* hexagon-based.
2. Using the Web Audio API to play audio clips coming from user-supplied sources.
3. Designing a custom color picker.
4. Designing a custom image picker.
5. An array of CSS animations.
6. Using XData in a TMS WEB Core project (see related [HexaGongsX](https://github.com/500Foods/HexaGongsX) repository).
7. Deployment considerations.

The result is a fun little app where you can create a custom sound board of sorts - add new "hexagong" tiles for each sound clip, and then you can just tap on them to play the sound. Useful for a variety of applications, but intended mostly as a demonstration project.

<a href="https://www.hexagongs.com"><img src="https://github.com/500Foods/HexaGongs/blob/main/hexagongs.png" /></a>
Website: [www.hexagongs.com](https://www.hexagongs.com)

## Key Dependencies
As with any modern web application, other JavaScript libraries/dependencies have been used in this project. Most of the time, this is handled via a CDN link (usually JSDelivr) in the Project.html file. In some cases, for performance or other reasons, they may be included directly.
- [TMS WEB Core](https://www.tmssoftware.com/site/tmswebcore.asp) - This is a TMS WEB Core project, after all
- [Bootstrap](https://getbootstrap.com/) - No introduction needed
- [Tabulator](https://www.tabulator.info) - Fantastic pure JavaScript web data tables
- [Font Awesome](https://www.fontawesome.com) - The very best icons
- [AudioBuffer-ArrayBuffer-Serializer](https://github.com/suzuito/audiobuffer-arraybuffer-serializer) - Useful for moving audio data around
- [Shoelace](https://shoelace.style/) - Web components, particularly the color picker for lights
- [InteractJS](https://interactjs.io/) - Dragging and resizing UI elements of all kinds
- [Simplebar](https://github.com/Grsmto/simplebar) - Used to create the custom hexagonal scrollbars
- [PanZoom](https://github.com/timmywil/panzoom) - Used for resizing images
- [D3](https://d3js.org/) - Used here to draw audio waveforms
- [Luxon](https://moment.github.io/luxon/#/?id=luxon) - Excellent date/time-handling library
- [FileSaver](https://moment.github.io/luxon/#/?id=luxon) - For downloading HexaGong projects
- [HackTimer](https://github.com/turuslan/HackTimer) - Addresses timers not firing on inactive browser tabs

## Additional Notes
While this project is currently under active development, feel free to give it a try and post any issues you encounter.  Or start a discussion if you would like to help steer the project in a particular direction.  Early days yet, so a good time to have your voice heard.  As the project unfolds, additional resources will be made available, including platform binaries, more documentation, demos, and so on.

## Repository Information
[![Count Lines of Code](https://github.com/500Foods/HexaGongs/actions/workflows/main.yml/badge.svg)](https://github.com/500Foods/HexaGongs/actions/workflows/main.yml)
<!--CLOC-START -->
```
Last Updated at 2023-12-24 05:16:19 UTC
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
Delphi Form                      1             54              0           2976
Pascal                           2            642           1204           2886
CSS                              1             77             27            601
HTML                             2             21             21             70
Markdown                         1              8              2             52
YAML                             2              8             12             33
JSON                             1              0              0             30
JavaScript                       1              3              0             25
-------------------------------------------------------------------------------
SUM:                            11            813           1266           6673
-------------------------------------------------------------------------------
```
<!--CLOC-END-->

## Sponsor / Donate / Support
If you find this work interesting, helpful, or valuable, or that it has saved you time, money, or both, please consider directly supporting these efforts financially via [GitHub Sponsors](https://github.com/sponsors/500Foods) or donating via [Buy Me a Pizza](https://www.buymeacoffee.com/andrewsimard500). Also, check out these other [GitHub Repositories](https://github.com/500Foods?tab=repositories&q=&sort=stargazers) that may interest you.

## More TMS WEB Core and TMS XData Content
If you're interested in other TMS WEB Core and TMS XData content, follow along on 𝕏 at [@WebCoreAndMore](https://x.com/WebCoreAndMore), join our 𝕏 [Web Core and More Community](https://twitter.com/i/communities/1683267402384183296), or check out the [TMS Software Blog](https://www.tmssoftware.com/site/blog.asp).
