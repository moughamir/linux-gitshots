#!/bin/bash
# Create a directory and copy the original images there for manipulation:
mkdir temp
cp *.JPG temp/.
# Resize the images:
mogrify -resize 800x600  temp/*.JPG
# Create the morph images
convert temp/*.JPG -delay 10 -morph 5 temp/%05d.jpg
# Stitch them together into a video
ffmpeg -r 50 -qscale 2  -i temp/%05d.jpg output.mp4