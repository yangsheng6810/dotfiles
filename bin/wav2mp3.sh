#!/bin/sh
# name of this script: wav2mp3.sh
# wav to mp3

for i in *.wav; do
 if [ -e "$i" ]; then
   file=`basename "$i" .wav`
   lame -h -b 192 "$i" "$file.mp3"
 fi
done
