#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## browser : @adi1090x
## music : @adi1090x

rofi_command="rofi -theme themes/apps.rasi"

# Links
terminal=""
files="ﱮ"
editor=""
browser=""
music=""
settings=""

# Variable passed to rofi
options="$terminal\n$files\n$editor\n$browser\n$music\n$settings"

chosen="$(echo -e "$options" | $rofi_command -p "Most Used" -dmenu -selected-row 0)"
case $chosen in
    $terminal)
        terminator &
        ;;
    $files)
        nautilus &
        ;;
    $editor)
        libreoffice &
        ;;
    $browser)
        firefox &
        ;;
    $music)
        spotify &
        ;;
    $settings)
	    eclipse	&
        ;;
esac

