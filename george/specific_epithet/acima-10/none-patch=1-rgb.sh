# none - patch=1 - mobilenetv2 - RGB
python ../../../sem_patch.py --model mobilenetv2 --folds 34 --patches 1 --width 256 --height 256 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/RGB/segmented_unet/256/deep_feature/specific_epithet/acima-10/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/RGB/segmented_unet/256/patch=1/specific_epithet/acima-10/mobilenetv2/fold-%d_patches-%d.npy

python ../../../sem_patch.py --model mobilenetv2 --folds 34 --patches 1 --width 400 --height 400 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/RGB/segmented_unet/400/deep_feature/specific_epithet/acima-10/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/RGB/segmented_unet/400/patch=1/specific_epithet/acima-10/mobilenetv2/fold-%d_patches-%d.npy

python ../../../sem_patch.py --model mobilenetv2 --folds 34 --patches 1 --width 512 --height 512 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/RGB/segmented_unet/512/deep_feature/specific_epithet/acima-10/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/RGB/segmented_unet/512/patch=1/specific_epithet/acima-10/mobilenetv2/fold-%d_patches-%d.npy

# none - patch=1 - resenet50v2 - RGB
python ../../../sem_patch.py --model resnet50v2 --folds 34 --patches 1 --width 256 --height 256 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/RGB/segmented_unet/256/deep_feature/specific_epithet/acima-10/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/RGB/segmented_unet/256/patch=1/specific_epithet/acima-10/resnet50v2/fold-%d_patches-%d.npy

python ../../../sem_patch.py --model resnet50v2 --folds 34 --patches 1 --width 400 --height 400 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/RGB/segmented_unet/400/deep_feature/specific_epithet/acima-10/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/RGB/segmented_unet/400/patch=1/specific_epithet/acima-10/resnet50v2/fold-%d_patches-%d.npy

python ../../../sem_patch.py --model resnet50v2 --folds 34 --patches 1 --width 512 --height 512 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/RGB/segmented_unet/512/deep_feature/specific_epithet/acima-10/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/RGB/segmented_unet/512/patch=1/specific_epithet/acima-10/resnet50v2/fold-%d_patches-%d.npy

# none - patch=1 - vgg16 - RGB
python ../../../sem_patch.py --model vgg16 --folds 34 --patches 1 --width 256 --height 256 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/RGB/segmented_unet/256/deep_feature/specific_epithet/acima-10/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/RGB/segmented_unet/256/patch=1/specific_epithet/acima-10/vgg16/fold-%d_patches-%d.npy

python ../../../sem_patch.py --model vgg16 --folds 34 --patches 1 --width 400 --height 400 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/RGB/segmented_unet/400/deep_feature/specific_epithet/acima-10/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/RGB/segmented_unet/400/patch=1/specific_epithet/acima-10/vgg16/fold-%d_patches-%d.npy

python ../../../sem_patch.py --model vgg16 --folds 34 --patches 1 --width 512 --height 512 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/RGB/segmented_unet/512/deep_feature/specific_epithet/acima-10/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/RGB/segmented_unet/512/patch=1/specific_epithet/acima-10/vgg16/fold-%d_patches-%d.npy