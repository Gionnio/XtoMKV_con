#!/bin/bash

# Check if FFmpeg is installed
if ! command -v ffmpeg &>/dev/null; then
  echo "FFmpeg is not installed. Installing..."

  # Check the operating system and use the appropriate package manager
  if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS (using Homebrew)
    if ! command -v brew &>/dev/null; then
      echo "Homebrew is not installed. Installing..."
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    brew install ffmpeg
  elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux (using APT)
    if ! command -v apt &>/dev/null; then
      echo "APT is not available on this system. Please ensure FFmpeg is installed manually."
      exit 1
    fi
    sudo apt-get update
    sudo apt-get install ffmpeg
  elif [[ "$OSTYPE" == "msys"* ]]; then
  # Windows (using Windows Package Manager - winget)
  if ! command -v winget &>/dev/null; then
    echo "Windows Package Manager (winget) is not available. Please install it and ensure FFmpeg is installed manually."
    exit 1
  fi
  winget install -e --id FFmpeg.FFmpeg
  else
    echo "Unsupported operating system. Please ensure FFmpeg is installed manually."
    exit 1
  fi
fi

# Specify the source and destination folders
source_folder="/path/to/your/source/folder"     #change me
destination_folder="/path/to/your/destination/folder"       #change me

# Create the destination folder if it doesn't exist
mkdir -p "$destination_folder"

# Find all non-.mkv video files in the source folder
find "$source_folder" -type f ! -name "*.mkv" -exec sh -c '
  for file do
    # Get the file name without extension
    file_name="${file%.*}"
    # Use FFmpeg to convert the file to .mkv without re-encoding
    ffmpeg -hide_banner -i "$file" -c:v copy -c:a copy "$destination_folder/$file_name.mkv"
    # Remove the original non-.mkv file
    rm "$file"
  done
' sh {} +

echo "Conversion completed!"
