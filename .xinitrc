#!/bin/sh
# SPDX-FileCopyrightText: 2023-2024 Jason Pena <jasonpena@awkless.com>
# SPDX-License-Identifier: MIT

# Setup wallpaper...
sh "$HOME/.local/bin/fehbg" &

# Banish mouse when we don't need it...
unclutter &

# Run slock for a period of inactivity...
xautolock -detectsleep -time 10 -locker slock &

# Open some applications by default...
st -e tmux -u &
st -e aerc &
firefox &
xsetroot -cursor_name hand2

# Start up DWM...
sh "${XDG_CONFIG_HOME:-$HOME/.config}/dwm/status.sh" &
exec dwm
