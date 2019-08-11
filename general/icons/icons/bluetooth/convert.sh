#!/bin/sh

sizes=(
	16 22 24 32 36 48 64 72 96 128 192 256 384 512
)

SRC_DIR=src
DST_DIR=resized/%/status

rm -rf $DST_DIR

for size in ${sizes[@]}; do
	size=${size}x${size}
	dir=$( echo $DST_DIR | sed "s/\%/$size/g" )

	echo "Generating size: $size"
	mkdir -p "$dir"

	for file in $SRC_DIR/*.png; do
		file_name=$( basename $file )

		convert $file -colorspace sRGB -resize $size $dir/$file_name

		echo -e "\t${file_name}: done"
	done
	echo ""
done
