#!/bin/bash
FILENAME="$1"
OUTPUT_PREFIX="$2"
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 <input> <output_prefix>"
else
    if [ -f $FILENAME ]; then
        split -C 2000 "$FILENAME" qr_generate_temp_
        for file in qr_generate_temp_*; do
            <"$file" qrencode -s 3 -d 150 -o "${OUTPUT_PREFIX}_${file#qr_generate_temp_}".qr
            rm "${file}"
        done
    else
        echo "File $FILENAME not found"
    fi
fi
