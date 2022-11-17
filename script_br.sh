#!/bin/bash

# specific epithet (> 5)
for m in mobilenetv2 resnet50v2 vgg16; do
    for res in 256 400 512; do
    	for patch in 1 3; do
    		for color in RGB grayscale; do
    			if [ ${patch} -eq 1 ]
    			then
    				python horizontal.py --model ${m} --folds 276 --patches ${patch} --width ${res} --height ${res} -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_br/imagens/${color}/specific_epithet/${res}/5/f%d/w_pred_mask/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_br/features/${color}/segmented_unet/${res}/patch=${patch}/specific_epithet/5/${m}/fold-%d_patches-%d.npy
    			else
    				python horizontal.py --model ${m} --folds 276 --patches ${patch} --width ${res} --height ${res} -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_br/imagens/${color}/specific_epithet/${res}/5/f%d/w_pred_mask/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_br/features/${color}/segmented_unet/${res}/patch=${patch}/specific_epithet/5/${m}/horizontal/fold-%d_patches-%d.npy
    			fi
    		done
    	done
    done
done

# specific epithet (> 10)
for m in mobilenetv2 resnet50v2 vgg16; do
    for res in 256 400 512; do
    	for patch in 1 3; do
    		for color in RGB grayscale; do
    			if [ ${patch} -eq 1 ]
    			then
    				python horizontal.py --model ${m} --folds 188 --patches ${patch} --width ${res} --height ${res} -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_br/imagens/${color}/specific_epithet/${res}/10/f%d/w_pred_mask/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_br/features/${color}/segmented_unet/${res}/patch=${patch}/specific_epithet/10/${m}/fold-%d_patches-%d.npy
    			else
    				python horizontal.py --model ${m} --folds 188 --patches ${patch} --width ${res} --height ${res} -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_br/imagens/${color}/specific_epithet/${res}/10/f%d/w_pred_mask/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_br/features/${color}/segmented_unet/${res}/patch=${patch}/specific_epithet/10/${m}/horizontal/fold-%d_patches-%d.npy
    			fi
    		done
    	done
    done
done

# specific epithet (> 20)
for m in mobilenetv2 resnet50v2 vgg16; do
    for res in 256 400 512; do
    	for patch in 1 3; do
    		for color in RGB grayscale; do
    			if [ ${patch} -eq 1 ]
    			then
    				python horizontal.py --model ${m} --folds 122 --patches ${patch} --width ${res} --height ${res} -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_br/imagens/${color}/specific_epithet/${res}/20/f%d/w_pred_mask/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_br/features/${color}/segmented_unet/${res}/patch=${patch}/specific_epithet/20/${m}/fold-%d_patches-%d.npy
    			else
    				python horizontal.py --model ${m} --folds 122 --patches ${patch} --width ${res} --height ${res} -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_br/imagens/${color}/specific_epithet/${res}/20/f%d/w_pred_mask/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_br/features/${color}/segmented_unet/${res}/patch=${patch}/specific_epithet/20/${m}/horizontal/fold-%d_patches-%d.npy
    			fi
    		done
    	done
    done
done