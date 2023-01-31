#!/bin/sh
# Shows a full-screen image slideshow, or closes it
# Also, does not support spaces. I'm too old for that shit.
# When I get angry, I'll rewrite this to python :D
# Also TODO should support multiple screens.

set -ex

ACTION="$1"

WINDOW_TITLE="screen-block-image"
CHANGE_DELAY="60"  # seconds
PICS=~/Pictures/wallpaperish/*
CAPTION_PATH="../5min"  # relative to PICS
FONTPATH='/usr/share/fonts/truetype/lato/'
FONT='Lato-Regular/48'

if [ "x$ACTION" = "xstart" ]; then
    feh -FZz -D$CHANGE_DELAY --title "$WINDOW_TITLE" --fontpath "$FONTPATH" --font "$FONT" --caption-path "$CAPTION_PATH" $PICS &
    sleep 1  # :-|
    wmctrl -R $WINDOW_TITLE -b add,above
else
    timeout 3s wmctrl -c $WINDOW_TITLE
fi
