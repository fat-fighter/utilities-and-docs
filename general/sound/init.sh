#! /bin/bash

#sudo pacman -S --noconfirm pulseaudio asoundconf

# Setting default card to PCH
rm ~/.asoundrc
asoundconf set-default-card PCH

echo "defaults.ctl.card PCH" >> ~/.asoundrc
echo "defaults.pcm.card PCH" >> ~/.asoundrc

# Unmute and reset volumes for all sinks
#pactl set-sink-mute 0 -1
sinks=( `pactl list sinks | grep '^Sink #' | sed 's/Sink #//g'` )
for sink in $sinks; do
	pactl set-sink-mute $sink 0
	pactl set-sink-volume $sink 100% 100%
done

# Custom Sink Settings
pactl set-sink-volume 0 70% 120%				# Front Left speaker is faulty

# Kill all instances of pulseaudio
# All bluetooth headsets will get disconnected
#killall -q pulseaudio

# https://wiki.archlinux.org/index.php/PulseAudio/Examples#Automatically_switch_audio_to_HDMI
