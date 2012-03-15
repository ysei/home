#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xrdb -merge ~/.Xresources
setxkbmap -layout pl -option ctrl:nocaps
xset b off # no bell
xset +dpms
xset dpms 0 0 300

thunar --daemon &
devmon &

case $1 in
    evilwm)
        xbindkeys &
        evilwm -term urxvt -snap 10 &
        exec xclock -padding 2 -g -0+0 
        ;;
    gnome)
        exec gnome-session ;;
    *)
        exec awesome ;;
esac
