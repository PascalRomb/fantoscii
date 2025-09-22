#!/bin/bash

CLIP_FILE="fantozzi.mp4"
OUTPUT_DIR="ascii_frames"
MOVIE_NAME="fantoscii"
FPS=10
WIDTH=160
HEIGHT=86

# 1. convert video to frames
mkdir -p frames
ffmpeg -i "$CLIP_FILE" \
  -vf "scale=${WIDTH}:$((${HEIGHT})),format=gray,eq=contrast=1.4:brightness=0.05" -r $FPS \
  frames/frame_%04d.png


# 2. convert to ascii
mkdir -p "$OUTPUT_DIR"
for f in frames/*.png; do
  FRAME_NUM=$(basename "$f" .png)
  jp2a --width=$((WIDTH-1)) --chars=" .:-=+*#%@" "$f" > "$OUTPUT_DIR/${FRAME_NUM}.txt"
done

# Create one file
find "$OUTPUT_DIR" -type f -name "frame*.txt" | sort -V | while read f; do
  echo 1
  cat "$f"
done > "${MOVIE_NAME}.txt"


#Cleanup
rm -rf $OUTPUT_DIR
rm -rf frames