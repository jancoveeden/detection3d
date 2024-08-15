set -x
set -e
python3 -u C:\Users\OEM\nerf-gs-detect\NeRF_RPN\detection3d\nerf_rpn\run_rpn.py \
--mode train \
--save_path E:\NeRF_datasets\nerf_rpn\hyp_nerfacto_rpn_data\results \
--gpus 0 \
--resolution 160 \
--backbone_type resnet \
--features_path E:\NeRF_datasets\nerf_rpn\hyp_nerfacto_rpn_data\features \
--boxes_path E:\NeRF_datasets\nerf_rpn\hyp_nerfacto_rpn_data\obb \
--dataset_split E:\NeRF_datasets\nerf_rpn\hyp_nerfacto_rpn_data\hypersim_split.npz \
--checkpoint E:\NeRF_datasets\nerf_rpn\nerf_rpn_model_release\hypersim_anchor_resnet50.pt \
--batch_size 8 \
--filter None \
--filter_threshold 0.7 \
--dataset_name hypersim \
--rpn_nms_thresh 0.3 \
--num_epochs 100 \
--lr 3e-4 \
--weight_decay 1e-3 \
--log_interval 10 \
--eval_interval 10 \
--rotated_bbox \
--log_to_file \