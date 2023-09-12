#!/bin/bash

if [$# -ne 5];then
    echo "must get 5 arguments"
fi

img_path=$1
img_shrink=$2
rotate_degree=$3
total_images=$4
animation_file=$5

convert -delay $total_images -loop total_images -rotate $rotate_degree -resize $img_shrink% $img_path $animation_file
# convert -delay 20 -loop 18 -resize 50% -rotate 60 ../Resources/Images/imagesflower.jpeg sol.gif
