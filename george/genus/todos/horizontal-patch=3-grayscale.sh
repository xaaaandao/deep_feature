# horizontal - patch=3 - mobilenetv2 - grayscale 
python ../../../horizontal.py --model mobilenetv2 --folds 5 --patches 3 --width 256 --height 256 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/grayscale/segmented_unet/256/deep_feature/genus/todos/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/grayscale/segmented_unet/256/patch=3/genus/todos/mobilenetv2/horizontal/fold-%d_patches-%d.npy

python ../../../horizontal.py --model mobilenetv2 --folds 5 --patches 3 --width 400 --height 400 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/grayscale/segmented_unet/400/deep_feature/genus/todos/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/grayscale/segmented_unet/400/patch=3/genus/todos/mobilenetv2/horizontal/fold-%d_patches-%d.npy

python ../../../horizontal.py --model mobilenetv2 --folds 5 --patches 3 --width 512 --height 512 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/grayscale/segmented_unet/512/deep_feature/genus/todos/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/grayscale/segmented_unet/512/patch=3/genus/todos/mobilenetv2/horizontal/fold-%d_patches-%d.npy

# horizontal - patch=3 - resenet50v2 - grayscale
python ../../../horizontal.py --model resnet50v2 --folds 5 --patches 3 --width 256 --height 256 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/grayscale/segmented_unet/256/deep_feature/genus/todos/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/grayscale/segmented_unet/256/patch=3/genus/todos/resnet50v2/horizontal/fold-%d_patches-%d.npy

python ../../../horizontal.py --model resnet50v2 --folds 5 --patches 3 --width 400 --height 400 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/grayscale/segmented_unet/400/deep_feature/genus/todos/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/grayscale/segmented_unet/400/patch=3/genus/todos/resnet50v2/horizontal/fold-%d_patches-%d.npy

python ../../../horizontal.py --model resnet50v2 --folds 5 --patches 3 --width 512 --height 512 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/grayscale/segmented_unet/512/deep_feature/genus/todos/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/grayscale/segmented_unet/512/patch=3/genus/todos/resnet50v2/horizontal/fold-%d_patches-%d.npy

# horizontal - patch=3 - vgg16 - grayscale
python ../../../horizontal.py --model vgg16 --folds 5 --patches 3 --width 256 --height 256 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/grayscale/segmented_unet/256/deep_feature/genus/todos/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/grayscale/segmented_unet/256/patch=3/genus/todos/vgg16/horizontal/fold-%d_patches-%d.npy

python ../../../horizontal.py --model vgg16 --folds 5 --patches 3 --width 400 --height 400 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/grayscale/segmented_unet/400/deep_feature/genus/todos/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/grayscale/segmented_unet/400/patch=3/genus/todos/vgg16/horizontal/fold-%d_patches-%d.npy

python ../../../horizontal.py --model vgg16 --folds 5 --patches 3 --width 512 --height 512 -i /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/imagens/grayscale/segmented_unet/512/deep_feature/genus/todos/f%d/*.jpeg -o /home/xandao/Documentos/GitHub/dataset_gimp/imagens_george/features/grayscale/segmented_unet/512/patch=3/genus/todos/vgg16/horizontal/fold-%d_patches-%d.npy