# XtoMKV_con
Convert any video files to MKV file format using ffmpeg without re-encoding


XtoMKV_con is a simple utility that helps you convert all non ".mkv" files in a folder to ".mkv", deleting the original files after conversion.

## Features

Works on macOS, Linux (apt-get as package manager, no pacman and yum support yet), and should work on Windows as well (testing pending).

Uses FFmpeg for the conversion process.

Automatically checks for the presence of FFmpeg in the operating system and installs it if missing.

If you're on macOS, XtoMKV.sh will install FFmpeg via Homebrew if it's not already installed. If Homebrew is missing, it will be installed as well.

If you're on Windows, XtoMKV.sh will install FFmpeg via winget (I don't have a Windows machine at the moment so I cannot test it)

## Demo

![](https://s11.gifyu.com/images/SgYQi.gif)

## Installation

Simply download XtoMKV.sh and make it executable with:
```bash
chmod +x XtoMKV.sh
```
and run it
```
sh ./XtoMKV.sh
```
You will be asked for input and output folder before stating conversion.

Hope you like it! Feel free to fork and improve it!

## Roadmap

- Initial release 

- Add Terminal-User Interface

- Modify FFmpeg settings before conversion

## License

[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)
