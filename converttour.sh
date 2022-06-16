#!/bin/bash

# Input Format
input_format=jpg

# Output Format
output_format=jpeg

# Convert files with ffmpeg - Also copy metadata
for i in *.$input_format; do ffmpeg -i "$i" -map_metadata 0 -c copy "${i%.*}.$output_format"; done

# Rename old files
for i in *.$input_format; do mv "$i" original_"$i"; done
