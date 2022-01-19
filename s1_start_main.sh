
# python main.py single_pose --exp_id coac_movenet --dataset active_coco --dataset active_coco --arch movenet --batch_size 24 --master_batch 4 --lr 2.5e-4 --gpus 0,1,2,3 --num_epochs 250 --lr_step 120,150,180,200,230 --num_workers 16 --resume #--load_model ../models/ctdet_movenet.pth
# test
# python test.py single_pose --exp_id coac_movenet --dataset active_coco --arch movenet --keep_res --resume
# flip test
# python test.py single_pose --exp_id coac_movenet --dataset active_coco --arch movenet --keep_res --resume --flip_test
# python main.py  single_pose  --exp_id yoga_movenet --dataset active --arch movenet --batch_size 48  --lr 5e-4 --gpus 0 --num_epochs 4 --lr_step 30 --num_workers 8 --load_model ../models/movenet.pth
# python main.py  single_pose  --exp_id coac_movenet --dataset active_coco --dataset active_coco --arch movenet --batch_size 24 --master_batch 4 --lr 2.5e-4 --gpus 0,1,2,3 --num_epochs 250 --lr_step 120,150,180,200,230 --num_workers 16 --resume #--load_model ../models/ctdet_movenet.pth



# !/bin/bash
echo "start train now"
# cd '/workspace/movenet-leeman/movenet/'
## 屏蔽 stdout 和 stderr
## command > /dev/null 2>&1
killlog='log/kill_train.log'
(ps -ef | grep main.py | awk '{print $2}' | xargs kill -9)>$killlog 2>&1

sleep 1s

python3 src/main.py  single_pose  --exp_id pet17kp \
       --dataset active --arch movenet --batch_size 128 \
       --lr 5e-4 --gpus 0 --num_epochs 10000 \
       --lr_step 30 --num_workers 8 \
       --load_model models/movenet.pth >log/train.log 2>log/bug.log &