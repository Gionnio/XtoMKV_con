# XtoMKV_con
Convert any video files to MKV file format using ffmpeg without re-encoding using ffmpeg


XtoMKV_con is a simple utility that helps you convert all non ".mkv" files in a folder to ".mkv", deleting the original files after conversion.

## Features

Works on macOS, Linux (apt-get as package manager, no pacman and yum support yet), and should work on Windows as well (testing pending).

Uses FFmpeg for the conversion process.

Automatically checks for the presence of FFmpeg in the operating system and installs it if missing.

If you're on macOS, XtoMKV.sh will install FFmpeg via Homebrew if it's not already installed. If Homebrew is missing, it will be installed as well.

If you're on Windows, XtoMKV.sh will install FFmpeg via winget (I don't have a Windows machine at the moment so I cannot test it)


## Installation

Simply download XtoMKV.sh
Set video files path:
```bash
source_folder=**"/path/to/your/source/folder"**
destination_folder=**"/path/to/your/source/folder"**
```
Make it executable with:
```
chmod +x XtoMKV.sh
```
and run it
```
sh ./XtoMKV.sh
```

Hope you like it! Feel free to fork and improve it!

## License

[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)
