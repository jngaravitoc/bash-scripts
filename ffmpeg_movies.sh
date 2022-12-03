#!/bin/bash

module load ffmpeg

frame_rate='15'
video_name='OP_m12c_dark.mp4'
start_number='400'
file_name='../plots/m12c/orb_poles_m12c_dark_particles_shell_no_rot_'
ffmpeg  -r  $frame_rate -start_number $start_number -i $file_name%3d.png -s 1920x1080  -crf 15 -pix_fmt yuv420p $video_name

