# horizontal - patch=1 - mobilenetv2 - RGB 
python ../horizontal.py --model mobilenetv2 --folds 5 --patches 1 --width 256 --height 256 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/RGB/segmented_manual/256/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/RGB/segmented_manual/256/patch=1/mobilenetv2/fold-%d_patches-%d.npy

python ../horizontal.py --model mobilenetv2 --folds 5 --patches 1 --width 400 --height 400 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/RGB/segmented_manual/400/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/RGB/segmented_manual/400/patch=1/mobilenetv2/fold-%d_patches-%d.npy

python ../horizontal.py --model mobilenetv2 --folds 5 --patches 1 --width 512 --height 512 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/RGB/segmented_manual/512/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/RGB/segmented_manual/512/patch=1/mobilenetv2/fold-%d_patches-%d.npy

# horizontal - patch=1 - resnet50v2 - RGB
python ../horizontal.py --model resnet50v2 --folds 5 --patches 1 --width 256 --height 256 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/RGB/segmented_manual/256/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/RGB/segmented_manual/256/patch=1/resnet50v2/fold-%d_patches-%d.npy

python ../horizontal.py --model resnet50v2 --folds 5 --patches 1 --width 400 --height 400 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/RGB/segmented_manual/400/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/RGB/segmented_manual/400/patch=1/resnet50v2/fold-%d_patches-%d.npy

python ../horizontal.py --model resnet50v2 --folds 5 --patches 1 --width 512 --height 512 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/RGB/segmented_manual/512/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/RGB/segmented_manual/512/patch=1/resnet50v2/fold-%d_patches-%d.npy

# horizontal - patch=1 - vgg16 - RGB
python ../horizontal.py --model vgg16 --folds 5 --patches 1 --width 256 --height 256 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/RGB/segmented_manual/256/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/RGB/segmented_manual/256/patch=1/vgg16/fold-%d_patches-%d.npy

python ../horizontal.py --model vgg16 --folds 5 --patches 1 --width 400 --height 400 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/RGB/segmented_manual/400/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/RGB/segmented_manual/400/patch=1/vgg16/fold-%d_patches-%d.npy

python ../horizontal.py --model vgg16 --folds 5 --patches 1 --width 512 --height 512 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/RGB/segmented_manual/512/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/RGB/segmented_manual/512/patch=1/vgg16/fold-%d_patches-%d.npy

# segmented_unet
# horizontal - patch=1 - mobilenetv2 - RGB
python ../horizontal.py --model mobilenetv2 --folds 5 --patches 1 --width 256 --height 256 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/RGB/segmented_unet/256/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/RGB/segmented_unet/256/patch=1/mobilenetv2/fold-%d_patches-%d.npy

python ../horizontal.py --model mobilenetv2 --folds 5 --patches 1 --width 400 --height 400 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/RGB/segmented_unet/400/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/RGB/segmented_unet/400/patch=1/mobilenetv2/fold-%d_patches-%d.npy

python ../horizontal.py --model mobilenetv2 --folds 5 --patches 1 --width 512 --height 512 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/RGB/segmented_unet/512/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/RGB/segmented_unet/512/patch=1/mobilenetv2/fold-%d_patches-%d.npy

# horizontal - patch=1 - resnet50v2 - RGB
python ../horizontal.py --model resnet50v2 --folds 5 --patches 1 --width 256 --height 256 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/RGB/segmented_unet/256/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/RGB/segmented_unet/256/patch=1/resnet50v2/fold-%d_patches-%d.npy

python ../horizontal.py --model resnet50v2 --folds 5 --patches 1 --width 400 --height 400 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/RGB/segmented_unet/400/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/RGB/segmented_unet/400/patch=1/resnet50v2/fold-%d_patches-%d.npy

python ../horizontal.py --model resnet50v2 --folds 5 --patches 1 --width 512 --height 512 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/RGB/segmented_unet/512/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/RGB/segmented_unet/512/patch=1/resnet50v2/fold-%d_patches-%d.npy

# horizontal - patch=1 - vgg16 - RGB
python ../horizontal.py --model vgg16 --folds 5 --patches 1 --width 256 --height 256 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/RGB/segmented_unet/256/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/RGB/segmented_unet/256/patch=1/vgg16/fold-%d_patches-%d.npy

python ../horizontal.py --model vgg16 --folds 5 --patches 1 --width 400 --height 400 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/RGB/segmented_unet/400/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/RGB/segmented_unet/400/patch=1/vgg16/fold-%d_patches-%d.npy

python ../horizontal.py --model vgg16 --folds 5 --patches 1 --width 512 --height 512 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/imagens/RGB/segmented_unet/512/deep_feature/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_sp/features/RGB/segmented_unet/512/patch=1/vgg16/fold-%d_patches-%d.npy