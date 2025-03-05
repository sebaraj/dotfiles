#!/bin/bash

# Usage: ./autocopyconv.sh /path/to/destination
# Dependencies: fswatch, imagemagick

if [ "$#" -ne 1 ]; then
    echo "Usage: autocopyconv /path/to/destination"
    exit 1
fi

DESTINATION="$1"
DOWNLOADS="$HOME/Downloads"

echo "New images will be moved to: $DESTINATION"
echo "Monitoring $DOWNLOADS for new image files..."

fswatch -0 "$DOWNLOADS" | while IFS= read -r -d "" EVENT; do
    if [[ "$EVENT" =~ \.(jpg|jpeg|png|gif|bmp|tiff|heic|HEIC)$ ]]; then
         if mv "$EVENT" "$DESTINATION" 2>/dev/null; then
             if [[ "$EVENT" =~ \.(heic|HEIC)$ ]]; then
                 filename=$(basename "$EVENT")
                 base="${filename%.*}"
                 HEICFILE="$DESTINATION/${base}.jpg"
                 magick "$DESTINATION/$(basename "$EVENT")" "$HEICFILE"
                 if [ -f "$HEICFILE" ]; then
                     echo "Converted $EVENT to $HEICFILE"
                     rm "$DESTINATION/$(basename "$EVENT")"
                 else
                     echo "Failed to convert $EVENT to JPEG"
                 fi
             fi
         # else
             # echo "Failed to move $EVENT"
         fi
    fi
    sleep 1

done


