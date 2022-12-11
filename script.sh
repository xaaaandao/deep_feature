#!/bin/bash


function no_patch {
	patch=$1
	extractor=$2
	threshold=$3
	n_folds=$4
	color=$5
	image_size=$6
	taxon=$7
	input_dir=$8
	output_dir=$9
    python horizontal.py --model "${extractor}" --folds "${n_folds}" --patches "${patch}" --width "${image_size}" --height "${image_size}" -i "${input_dir}"/"${color}"/"${image_size}"/"${threshold}"/f%d/*.jpeg -o "${output_dir}"/features/"${color}"/segmented_unet/"${image_size}"/patch="${patch}"/"${taxon}"/"${threshold}"/"${extractor}"/fold-%d_patches-%d.npy
}

function has_patch {
	patch=$1
	extractor=$2
	threshold=$3
	n_folds=$4
	color=$5
	image_size=$6
	taxon=$7
	input_dir=$8
	output_dir=$9
    python horizontal.py --model "${extractor}" --folds "${n_folds}" --patches "${patch}" --width "${image_size}" --height "${image_size}" -i "${input_dir}"/"${color}"/"${image_size}"/"${threshold}"/f%d/*.jpeg -o "${output_dir}"/features/"${color}"/segmented_unet/"${image_size}"/patch="${patch}"/"${taxon}"/"${threshold}"/"${extractor}"/horizontal/fold-%d_patches-%d.npy
}

function run_deep_feature {
	patch=$1
	extractor=$2
	threshold=$3
	n_folds=$4
	color=$5
	image_size=$6
	taxon=$7
	input_dir=$8
	output_dir=$9
	echo "${patch}" "${extractor}" "${threshold}" "${n_folds}" "${color}" "${image_size}" "${taxon}"
    if [ "${patch}" -eq "1" ]
	then
        no_patch "${patch}" "${cnn}" "${threshold}" "${n_folds}" "${color}" "${image_size}" "${taxon}" "${input_dir}" "${output_dir}"
    else
    	has_patch "${patch}" "${cnn}" "${threshold}" "${n_folds}" "${color}" "${image_size}" "${taxon}" "${input_dir}" "${output_dir}"
	fi
}


for cnn in "mobilenetv2" "resnet50v2" "vgg16"; do
    for size in "256" "400" "512"; do
    	for patch in "3" "1"; do
    		for color in "RGB" "grayscale"; do
    		    echo "dataset br"
				run_deep_feature ${patch} ${cnn} 5 235 ${color} ${size} "specific_epithet" "/home/xandao/Documentos/dataset_gimp/imagens_br/imagens" "/home/xandao/Documentos/dataset_gimp/imagens_br/features"
				run_deep_feature ${patch} ${cnn} 10 160 ${color} ${size} "specific_epithet" "/home/xandao/Documentos/dataset_gimp/imagens_br/imagens" "/home/xandao/Documentos/dataset_gimp/imagens_br/features"
				run_deep_feature ${patch} ${cnn} 20 105 ${color} ${size} "specific_epithet" "/home/xandao/Documentos/dataset_gimp/imagens_br/imagens" "/home/xandao/Documentos/dataset_gimp/imagens_br/features"

				echo "dataset george"
                run_deep_feature ${patch} ${cnn} 5 55 ${color} ${size} "specific_epithet" "/home/xandao/Documentos/dataset_gimp/imagens_george/imagens" "/home/xandao/Documentos/dataset_gimp/imagens_george/features"
				run_deep_feature ${patch} ${cnn} 10 34 ${color} ${size} "specific_epithet" "/home/xandao/Documentos/dataset_gimp/imagens_george/imagens" "/home/xandao/Documentos/dataset_gimp/imagens_george/features"
				run_deep_feature ${patch} ${cnn} 20 20 ${color} ${size} "specific_epithet" "/home/xandao/Documentos/dataset_gimp/imagens_george/imagens" "/home/xandao/Documentos/dataset_gimp/imagens_george/features"
    		done
    	done
    done
done