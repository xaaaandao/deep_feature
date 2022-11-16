#!/bin/bash
COLOR_MODE="grayscale"
TAXON="specific_epithet"
FOLDS=55
THRESHOLD=5
# specific epithet (> 5)
#for m in mobilenetv2 resnet50v2 vgg16; do
#    for res in 256 400 512; do
#    	python horizontal.py --model ${m} --folds ${FOLDS} --patches 3 --width ${res} --height ${res} -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/${COLOR_MODE}/${TAXON}/${res}/${THRESHOLD}/f%d/w_pred_mask/*.jpeg -o   /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/${COLOR_MODE}/segmented_unet/${res}/patch=3/${TAXON}/${THRESHOLD}/${m}/horizontal/fold-%d_patches-%d.npy
#    done
#done

# specific epithet (> 10)
#for m in mobilenetv2 resnet50v2 vgg16; do
#    for res in 400 512; do
#    	python horizontal.py --model ${m} --folds 34 --patches 3 --width ${res} --height ${res} -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/${COLOR_MODE}/${TAXON}/${res}/10/f%d/w_pred_mask/*.jpeg -o   /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/${COLOR_MODE}/segmented_unet/${res}/patch=3/${TAXON}/10/${m}/horizontal/fold-%d_patches-%d.npy
#    done
#done

# specific epithet (todos)
#for m in mobilenetv2 resnet50v2 vgg16; do
#    for res in 256 400 512; do
#    	python horizontal.py --model ${m} --folds 129 --patches 3 --width ${res} --height ${res} -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/${COLOR_MODE}/${TAXON}/${res}/todos/f%d/w_pred_mask/*.jpeg -o   /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/${COLOR_MODE}/segmented_unet/${res}/patch=3/${TAXON}/todos/${m}/horizontal/fold-%d_patches-%d.npy
#    done
#done

# specific epithet (> 20)
#for m in mobilenetv2 resnet50v2 vgg16; do
#    for res in 256 400 512; do
#    	python horizontal.py --model ${m} --folds 20 --patches 3 --width ${res} --height ${res} -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/${COLOR_MODE}/${TAXON}/${res}/20/f%d/w_pred_mask/*.jpeg -o   /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/${COLOR_MODE}/segmented_unet/${res}/patch=3/${TAXON}/20/${m}/horizontal/fold-%d_patches-%d.npy
#    done
#done
#
## genus (peperomia e piper)
#for m in mobilenetv2 resnet50v2 vgg16; do
#    for res in 256 400 512; do
#    	python horizontal.py --model ${m} --folds 2 --patches 3 --width ${res} --height ${res} -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/${COLOR_MODE}/genus/${res}/2/f%d/w_pred_mask/*.jpeg -o   /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/${COLOR_MODE}/segmented_unet/${res}/patch=3/genus/2/${m}/horizontal/fold-%d_patches-%d.npy
#    done
#done
#
## genus (peperomia e piper)
for m in mobilenetv2 resnet50v2 vgg16; do
    for res in 400 512; do
    	python horizontal.py --model ${m} --folds 2 --patches 3 --width ${res} --height ${res} -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/${COLOR_MODE}/genus/${res}/2/f%d/w_pred_mask/*.jpeg -o   /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/${COLOR_MODE}/segmented_unet/${res}/patch=3/genus/2/${m}/horizontal/fold-%d_patches-%d.npy
    done
done

## genus (peperomia e piper) RGB
#for m in mobilenetv2 resnet50v2 vgg16; do
#    for res in 256 400 512; do
#    	python horizontal.py --model ${m} --folds 2 --patches 3 --width ${res} --height ${res} -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/RGB/genus/${res}/2/f%d/w_pred_mask/*.jpeg -o   /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/RGB/segmented_unet/${res}/patch=3/genus/2/${m}/horizontal/fold-%d_patches-%d.npy
#    done
#done
#
## genus (peperomia e piper) RGB
#for m in mobilenetv2 resnet50v2 vgg16; do
#    for res in 256 400 512; do
#    	python horizontal.py --model ${m} --folds 5 --patches 3 --width ${res} --height ${res} -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/RGB/genus/${res}/todos/f%d/w_pred_mask/*.jpeg -o   /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/RGB/segmented_unet/${res}/patch=3/genus/todos/${m}/horizontal/fold-%d_patches-%d.npy
#    done
#one