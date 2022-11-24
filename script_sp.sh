#!/bin/bash

N_FOLDS=5

function runtest {
	p=$1
	extractor=$2
	color=$4
	image_size=$5
	segmented=$6
	if [ $p -eq 1 ]
	then
		echo "$p" "$extractor" "$color" "$image_size" "$taxon"
		python horizontal.py --model $extractor --folds $N_FOLDS --patches $p --width $image_size --height $image_size -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/$color/segmented_$segmnted/$image_size/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/$color/segmented_$segmnted/$image_size/patch=$p/$extractor/fold-%d_patches-%d.npy
    else
    	echo "$p" "$extractor" "$color" "$image_size" "${taxon}"
		python horizontal.py --model $extractor --folds $N_FOLDS --patches $p --width $image_size --height $image_size -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/$color/segmented_$segmnted/$image_size/f%d/w_pred_mask/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/$color/segmented_$segmnted/$image_size/patch=$p/$extractor/horizontal/fold-%d_patches-%d.npy
	fi
}

for cnn in mobilenetv2 resnet50v2 vgg16; do
    for size in 256 400 512; do
    	for segmented in manual unet; do
    		for patch in 1 3; do
    			for color in RGB grayscale; do
					runtest ${patch} ${cnn} ${color} ${size} ${segmented}
				done
			done
    	done
    done
done
