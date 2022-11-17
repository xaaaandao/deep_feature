#!/bin/bash
for m in mobilenetv2 resnet50v2 vgg16; do
    for res in 256 400 512; do
    	for seg in segmented_manual segmented_unet; do
    		for patch in 1 3; do
    			for color in RGB grayscale; do
    				if [ ${patch} -eq 1 ]
    				then
						python horizontal.py --model ${m} --folds 5 --patches ${patch} --width ${res} --height ${res} -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/${color}/${seg}/${res}/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/${color}/${seg}/${res}/patch=${patch}/${m}/fold-%d_patches-%d.npy
					else
						python horizontal.py --model ${m} --folds 5 --patches ${patch} --width ${res} --height ${res} -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/${color}/${seg}/${res}/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/${color}/${seg}/${res}/patch=${patch}/${m}/horizontal/fold-%d_patches-%d.npy
					fi
				done
			done
    	done
    done
done