cd src
# python main.py single_pose --exp_id coac_movenet --dataset active_coco --dataset active_coco --arch movenet --batch_size 24 --master_batch 4 --lr 2.5e-4 --gpus 0,1,2,3 --num_epochs 250 --lr_step 120,150,180,200,230 --num_workers 16 --resume #--load_model ../models/ctdet_movenet.pth
# valuation:
# python test.py single_pose --exp_id yoga_movenet --dataset active --arch movenet --resume
# python test.py single_pose --exp_id movenet --dataset active --arch movenet --load_model ../models/movenet.pth
# python test.py single_pose --exp_id coac_movenet --dataset active_coco --arch movenet --resume

## demo
python demo.py single_pose --dataset active --arch movenet --demo ../images --load_model ../models/movenet.pth --K 1 --gpus -0 --debug 2
# flip test
# python test.py single_pose --exp_id coac_movenet --dataset active_coco --arch movenet --keep_res --resume --flip_test
# python main.py  single_pose  --exp_id yoga_movenet --dataset active --arch movenet --batch_size 48  --lr 5e-4 --gpus 0 --num_epochs 4 --lr_step 30 --num_workers 8 --load_model ../models/movenet.pth
# python main.py  single_pose  --exp_id coac_movenet --dataset active_coco --dataset active_coco --arch movenet --batch_size 24 --master_batch 4 --lr 2.5e-4 --gpus 0,1,2,3 --num_epochs 250 --lr_step 120,150,180,200,230 --num_workers 16 --resume #--load_model ../models/ctdet_movenet.pth

cd ..

