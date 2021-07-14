#!/bin/bash

# Input Format
input_format=jpg

# Output Format
output_format=jpeg

# Convert files with ffmpeg
for i in *.$input_format; do ffmpeg -i "$i" "${i%.*}.$output_format"; done

# Delete files in old (original) format
for i in *.$input_format; do rm "$i"; done
