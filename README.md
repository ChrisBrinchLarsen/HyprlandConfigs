# Walkthrough
## Archinstall
When choosing profile, choose minimal option so you don't have to choose a preconfigured driver. Choose systemd-boot as your bootloader.

Add the following packages to package install during linux onboarding:
* neofetch
* text editor (nano, neovim, whatever)
* git
* base-devel
* linux-headers
* xorg-server
* alacritty
* nemo
* wofi
* discord
* browser (firefox, google-chrome-stable)
* waybar
* tldr
* thefuck
* hyprpaper
* feh
* btop

Choose pipewire for audio, iso network, enable multilib.

Choose "Install".

## Setting up NVIDIA Driver
Follow this [guide](https://wiki.hyprland.org/Nvidia/) closely.
1. Install nvidia-dkms, nvidia-utils, lib32-nvidia-utils
2. Honestly follow the fucking guide
3. Reboot

### Fixing flickering
In the same guide as above, scroll down to see how to remove flickering in applications like spotify.

## Yay
Type `git clone https://aur.archlinux.org/yay-bin.git`
CD into the new folder.
Run `makepkg -si`
Now Yay install hyprland.

## Deploying Configs
Make sure that all relevant config folders are in existance.

