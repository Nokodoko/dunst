#!/bin/bash   

export EDITOR=nvim
export TERMCMD=kitty
export BROWSER=google-chrome
#export BROWSER=qutebrowser
export XDG_CONFIG_DIRS/autostart="~/.config/autostart/"

#-----Keyboard Settings-----#
kmonad ~/.config/kmonad/config.kbd &
kmonad ~/.config/kmonad/nuphy.kbd &
kmonad ~/.config/kmonad/anneHard.kbd &
kmonad ~/.config/kmonad/gmmkCompact.kbd &

#-----erase kmonad settings from zsh-----#
sed -i 's/kmonad.*//' ~/.zshenv

#-----Screen-----#
picom -b --config ~/.config/.picom.conf
feh --bg-center ~/Pictures/neon80s.jpg

#-----Services-----#
sxhkd &
slstatus &
unclutter --timeout 2 &
dunst -config ~/.config/dunst/dunstrc &
buds.sh &
trackpad.sh &

#-----Ram Disk-----#
#cacheStart.zsh &

#-----Starting Programs-----#
slack &
discord &
pulseaudio &

#-----Disable Touch Pad-----#
xinput set-prop 21 "Device Enabled" 0 &

#-----Window Manager-----#
welcome.sh
#exec ~/Programs/phyOS-dwm/dwm
#exec ~/n0koSuckless/dwm-6.3/dwm
exec dwm
