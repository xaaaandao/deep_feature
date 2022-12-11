#!/bin/bash

n_folds=5

function no_patch {
    patch=$1
	cnn=$2
	color=$3
	image_size=$4
	segmented=$5
	input_dir=$6
	output_dir=$7
    python horizontal.py --model "${cnn}" --folds ${n_folds} --patches "${patch}" --width "${image_size}" --height "${image_size}" -i "${input_dir}"/"${color}"/segmented_"${segmented}"/"${image_size}"/deep_feature/f%d/*.jpeg -o "${output_dir}"/"${color}"/segmented_"${segmented}"/"${image_size}"/patch=1/"${cnn}"/fold-%d_patches-%d.npy
}

function has_patch {
    patch=$1
	cnn=$2
	color=$3
	image_size=$4
	segmented=$5
	input_dir=$6
	output_dir=$7
    python horizontal.py --model "${cnn}" --folds ${n_folds} --patches "${patch}" --width "${image_size}" --height "${image_size}" -i "${input_dir}"/"${color}"/segmented_"${segmented}"/"${image_size}"/f%d/w_pred_mask/*.jpeg -o "${output_dir}"/"${color}"/segmented_"${segmented}"/"${image_size}"/patch="${patch}"/"${cnn}"/horizontal/fold-%d_patches-%d.npy
}

function deep_feature {
	patch=$1
	cnn=$2
	color=$3
	image_size=$4
	segmented=$5
	input_dir=$6
	output_dir=$7
	echo "${patch}" "${cnn}" "${color}" "${image_size}" "${segmented}"
	if [ "${patch}" -eq "1" ]
	then
        no_patch "${patch}" "${cnn}" "${color}" "${image_size}" "${segmented}" "${input_dir}" "${output_dir}"
    else
    	has_patch "${patch}" "${cnn}" "${color}" "${image_size}" "${segmented}" "${input_dir}" "${output_dir}"
	fi
}

for cnn in mobilenetv2 resnet50v2 vgg16; do
    for size in 256 400 512; do
    	for segmented in manual unet; do
    		for patch in 1 3; do
    			for color in RGB grayscale; do
					deep_feature ${patch} ${cnn} ${color} ${size} ${segmented} "/home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens" "/home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features"
				done
			done
    	done
    done
done
