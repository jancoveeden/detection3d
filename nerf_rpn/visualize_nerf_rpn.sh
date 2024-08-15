set -x
set -e

python3 C:\Users\OEM\nerf-gs-detect\NeRF_RPN\detection3d\nerf_rpn\scripts\visualize_rpn_input.py \
-o E:\NeRF_datasets\nerf_rpn\hypersim_rpn_data\results \
-f E:\NeRF_datasets\nerf_rpn\hypersim_rpn_data\features \
--box_dir E:\NeRF_datasets\nerf_rpn\hypersim_rpn_data\obb \
--box_format obb
