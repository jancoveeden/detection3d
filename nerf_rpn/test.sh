# Anchor-based model testing

set -x
set -e

DATASET=scannet
BACKBONE=resnet
DATA_ROOT=rpndetection3d/data/${DATASET}_rpn_data
CHECKPOINT=scannet_anchor_resnet50.pt

# Checkpoints for Anchor-based: 
# scannet_anchor_resnet50.pt
# scannet_anchor_swinS.pt
# scannet_anchor_vggEF.pt

python3 -u rpndetection3d/nerf_rpn/run_rpn.py \
--mode "eval" \
--dataset_name ${DATASET} \
--resolution 160 \
--backbone_type ${BACKBONE} \
--features_path ${DATA_ROOT}/features \
--boxes_path ${DATA_ROOT}/obb \
--dataset_split ${DATA_ROOT}/${DATASET}_split.npz \
--save_path rpndetection3d/data/results/${DATASET}_anchor_${BACKBONE} \
--checkpoint rpndetection3d/data/nerf_rpn_model_release/${CHECKPOINT} \
--rpn_nms_thresh 0.3 \
--rotated_bbox \
--batch_size 2 \
--gpus 0 

# Enable --normalize_density only for pretrained 3D-FRONT models
# tr -d '\r' < test.sh > test.new && mv test.new test.sh