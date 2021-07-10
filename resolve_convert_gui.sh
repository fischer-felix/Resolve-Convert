#!/bin/bash
input_video=$(zenity --file-selection) ##video file is selected through zenity, starting directory of GUI may be changed by adding --filename=/your/starting/path after --file-selection

output_dir="$(dirname $input_video)"/ ##the path containing the video file is determined in order to output the converted file to it's original location

output_video="$(basename "$input_video" "${input_video#*.}")"mov ## the file extension is changed from it's original to .mov

output="$output_dir""$output_video" ##the output path + filename are combined


ffmpeg -i "$input_video" -vcodec mjpeg -q:v 2 -acodec pcm_s16be -q:a 0 -f mov "$output" ##conversion to .mov motionjpeg video using ffmpeg


##debugging
##echo "$input_video"
##echo "$output_dir"
##echo "$output_video"
##echo "$output"
