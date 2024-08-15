set -x
set -e
python3 -u C:\Users\OEM\nerf-gs-detect\NeRF_RPN\detection3d\nerf_rpn\run_fcos.py \
--save_path E:\NeRF_datasets\nerf_rpn\hypersim_rpn_data\results \
--gpus 0 \
--mode eval \
--resolution 160 \
--backbone_type resnet \
--features_path E:\NeRF_datasets\nerf_rpn\hypersim_rpn_data\features \
--boxes_path E:\NeRF_datasets\nerf_rpn\hypersim_rpn_data\obb \
--dataset_split E:\NeRF_datasets\nerf_rpn\hypersim_rpn_data\hypersim_split.npz \
--checkpoint E:\NeRF_datasets\nerf_rpn\nerf_rpn_model_release\hypersim_anchor_resnet50.pt \
--batch_size 2 \
--filter None \
--filter_threshold 0.7 \
--dataset hypersim \
--nms_thresh 0.3 \
--rotated_bbox \
--normalize_density \