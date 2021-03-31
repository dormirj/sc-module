#!/bin/sh

# Copyright (C) 2017-2018 Vilniaus Blokas UAB, https://blokas.io/pisound
# All rights reserved.
#
# This software may be modified and distributed under the terms
# of the BSD license.  See the LICENSE file for details.
#
. /usr/local/pisound/scripts/common/common.sh

export XAUTHORITY=/home/patchbox/.Xauthority
export DISPLAY=:0.0
export JACK_NO_AUDIO_RESERVATION=1

# /usr/bin/jackd -P95 -dalsa -dhw:pisound -p128 -n2 -r48000
# jack seems to be already started from some other dependency?

export QT_QPA_PLATFORM="offscreen"

pactl unload-module module-jackdbus-detect
pactl unload-module module-jack-sink
pactl unload-module module-jack-source

sclang /home/patch/Documents/scc/main.scd
