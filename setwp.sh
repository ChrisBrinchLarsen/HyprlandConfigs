#!/bin/bash
image=$@
extension=".png" # default extension

for file in ~/Wallpapers/*; do
    filename=$(basename "$file")
    if [[ "$filename" == "$image" ]]; then
        extension=".${filename##*.}"
    fi
done

echo preload = ~/Wallpapers/${image}${extension} > ~/.config/hypr/hyprpaper.conf
echo wallpaper = HDMI-A-1,~/Wallpapers/${image}${extension} >> ~/.config/hypr/hyprpaper.conf
echo splash = false >> ~/.config/hypr/hyprpaper.conf
pkill hyprpaper
hyprpaper </dev/null &>/dev/null &