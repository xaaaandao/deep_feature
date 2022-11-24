#!/bin/bash

function runtest {
	p=$1
	extractor=$2
	threshold=$3
	n_folds=$4
	color=$5
	image_size=$6
	taxon=$7
	if [ $p -eq 1 ]
	then
		echo "$p" "$extractor" "$threshold" "$n_folds" "$color" "$image_size" "$taxon"
		python horizontal.py --model $extractor --folds $n_folds --patches $p --width $image_size --height $image_size -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/$color/$taxon/$image_size/$threshold/f%d/w_pred_mask/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/$color/segmented_unet/$image_size/patch=$p/$taxon/$threshold/$extractor/fold-%d_patches-%d.npy
    else
    	echo "$p" "$extractor" "$threshold" "$n_folds" "$color" "$image_size" "$taxon"
    	python horizontal.py --model $extractor --folds $n_folds --patches $p --width $image_size --height $image_size -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/$color/$taxon/$image_size/$threshold/f%d/w_pred_mask/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/$color/segmented_unet/$image_size/patch=$p/$taxon/$threshold/$extractor/horizontal/fold-%d_patches-%d.npy
	fi
}


# specific epithet (> 5)
for m in mobilenetv2 resnet50v2 vgg16; do
    for size in 256 400 512; do
    	for patch in 1; do
    		for color in RGB grayscale; do
				runtest ${patch} ${m} 5 55 ${color} ${size} "specific_epithet"
				runtest ${patch} ${m} 10 34 ${color} ${size} "specific_epithet"
				runtest ${patch} ${m} 20 20 ${color} ${size} "specific_epithet"
    		done
    	done
    done
done