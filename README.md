# Resolve-Convert
Bash script that converts H.264 mp4 video files to Motionjpeg .mov to use in the free version of DaVinci Resolve on Linux. This has to be done because of compatibility issues of the non-studio Resolve version on Linux and H.264 encoded video.

## Dependencies
#### basename & dirname

 Distro | Install
------------ | -------------
Arch | `sudo pacman -S coreutils`
Debian/Ubuntu | `sudo apt-get install coreutils`
Fedora | `sudo dnf install coreutils`

#### ffmpeg

 Distro | Install
------------ | -------------
Arch | `sudo pacman -S ffmpeg`
Debian/Ubuntu | `sudo apt-get install ffmpeg`
Fedora | `sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm && sudo dnf install ffmpeg`

#### zenity (GUI version only)
 Distro | Install
------------ | -------------
Arch | `sudo pacman -S zenity`
Debian/Ubuntu | `sudo apt-get install zenity`
Fedora | `sudo dnf install zenity`


## Usage
Simply download the script, and execute it on the command line specifying the video file you want to convert.  
You may also want to add the path to the script as an alias in your ``.zshrc`` or ``.bashrc`` for ease of use.
