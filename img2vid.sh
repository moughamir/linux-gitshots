#!/bin/bash
#
# Create a directory and copy the original images there for manipulation:
imageRes=640x480
output="CommitSnap"
command_exists () {
    type "$1" &> /dev/null ;
}
mkdir temp
cp *.JPG temp/.
# Resize the images:
if command_exists mogrify; then
	mogrify -resize $imageRes  temp/*.JPG
else
	print "mogrify does not exist\n run sudo apt-get install ImageMagick"
fi

# Create the morph images
if command_exists convert; then
	convert temp/*.JPG -delay 10 -morph 5 temp/%05d.jpg
else
	print "convert does not exist\n run sudo apt-get install ImageMagick"
fi

# Stitch them together into a video
if which ffmpeg >/dev/null; then
	ffmpeg -r 50 -qscale 2  -i temp/%05d.jpg "$output".mp4
else
	print "ffmpeg does not exist\n run sudo apt-get install ImageMagick"
fi
#:EOF TEST