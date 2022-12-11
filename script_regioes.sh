#!/bin/bash

function runtest {
	p=$1
	extractor=$2
	threshold=$3
	n_folds=$4
	color=$5
	image_size=$6
	taxon=$7
	region=$8
	if [ $p -eq 1 ]
	then
		echo "$p" "$extractor" "$threshold" "$n_folds" "$color" "$image_size" "$taxon"
		python horizontal.py --model $extractor --folds $n_folds --patches $p --width $image_size --height $image_size -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_regioes/imagens/$color/$image_size/$region/$threshold/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_br/features/$color/segmented_unet/$image_size/$region/patch=1/$taxon/$threshold/$extractor/horizontal/fold-%d_patches-%d.npy
    else
    	echo "$p" "$extractor" "$threshold" "$n_folds" "$color" "$image_size" "$taxon"
    	python horizontal.py --model $extractor --folds $n_folds --patches $p --width $image_size --height $image_size -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_regioes/imagens/$color/$image_size/$region/$threshold/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_regioes/features/$color/segmented_unet/$image_size/patch=$p/Sul/$taxon/$threshold/$extractor/horizontal/fold-%d_patches-%d.npy
	fi
}


for m in mobilenetv2 resnet50v2 vgg16; do
    for size in 256 400 512; do
    	for patch in 3; do
    		for color in RGB grayscale; do
				 runtest ${patch} ${m} 5 71 ${color} ${size} "specific_epithet" "Sul"
				 runtest ${patch} ${m} 10 48 ${color} ${size} "specific_epithet" "Sul"
				 runtest ${patch} ${m} 20 32 ${color} ${size} "specific_epithet" "Sul"
#                runtest ${patch} ${m} 5 107 ${color} ${size} "specific_epithet" "Norte"
#				runtest ${patch} ${m} 10 68 ${color} ${size} "specific_epithet" "Norte"
#				runtest ${patch} ${m} 20 41 ${color} ${size} "specific_epithet" "Norte"
    		done
    	done
    done
done