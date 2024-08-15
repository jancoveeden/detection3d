#!/usr/bin/env bash
# Anchor-free model testing

set -x
set -e

DATASET=scannet
BACKBONE=resnet
DATA_ROOT=rpndetection3d/data/${DATASET}_rpn_data
CHECKPOINT=scannet_fcos_resnet50.pt

# Checkpoints for Anchor-free
# scannet_fcos_resnet50.pt
# scannet_fcos_swinS.pt
# scannet_fcos_vggEF.pt

python3 -u rpndetection3d/nerf_rpn/run_fcos.py \
--mode "eval" \
--dataset ${DATASET} \
--resolution 160 \
--backbone_type ${BACKBONE} \
--features_path ${DATA_ROOT}/features \
--boxes_path ${DATA_ROOT}/obb \
--dataset_split ${DATA_ROOT}/${DATASET}_split.npz \
--save_path rpndetection3d/data/results/${DATASET}_fcos_${BACKBONE} \
--checkpoint rpndetection3d/data/nerf_rpn_model_release/${CHECKPOINT} \
--norm_reg_targets \
--centerness_on_reg \
--nms_thresh 0.3 \
--output_proposals \
--save_level_index \
--rotated_bbox \
--batch_size 2 \
--gpus 0

# Enable --normalize_density only for pretrained 3D-FRONT models
# tr -d '\r' < test_fcos.sh > test_fcos.new && mv test_fcos.new test_fcos.sh