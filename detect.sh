#!/bin/bash
/usr/bin/sox -t alsa -r 8000 -c 1 default files/recording.wav silence 1 0.3 3% 2 2.0 5%
# silence above 1 2 3 below 1 2 3
# above 1 - tempo antes do inicio do som, below 1 tempo depois fim do som
data=$(date +%Y%m%d%H%M%S)
mv files/recording.wav files/$data.recording.wav
echo "Anexo audio" | mutt -a files/$data.recording.wav -s "Casa gravacao" -- emerbruno@gmail.com &
sh detect.sh
