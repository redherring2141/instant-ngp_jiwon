
#Train
#python3 ./scripts/run.py ../datasets/MipNeRF360/bicycle --n_steps 30000 --save_snapshot ../models/bicycle_30k/bicycle_30k.ingp > ./measurements/log_20240529/log_ingp_train_bicycle_30k
#python3 ./scripts/run.py ../datasets/MipNeRF360/bonsai --n_steps 30000 --save_snapshot ../models/bonsai_30k/bonsai_30k.ingp > ./measurements/log_20240529/log_ingp_train_bonsai_30k
#python3 ./scripts/run.py ../datasets/MipNeRF360/counter --n_steps 30000 --save_snapshot ../models/counter_30k/counter_30k.ingp > ./measurements/log_20240529/log_ingp_train_counter_30k
#python3 ./scripts/run.py ../datasets/MipNeRF360/flowers --n_steps 30000 --save_snapshot ../models/flowers_30k/flowers_30k.ingp > ./measurements/log_20240529/log_ingp_train_flowers_30k
#python3 ./scripts/run.py ../datasets/MipNeRF360/garden --n_steps 30000 --save_snapshot ../models/garden_30k/garden_30k.ingp > ./measurements/log_20240529/log_ingp_train_garden_30k
#python3 ./scripts/run.py ../datasets/MipNeRF360/kitchen --n_steps 30000 --save_snapshot ../models/kitchen_30k/kitchen_30k.ingp > ./measurements/log_20240529/log_ingp_train_kitchen_30k
#python3 ./scripts/run.py ../datasets/MipNeRF360/room --n_steps 30000 --save_snapshot ../models/room_30k/room_30k.ingp > ./measurements/log_20240529/log_ingp_train_room_30k
#python3 ./scripts/run.py ../datasets/MipNeRF360/stump --n_steps 30000 --save_snapshot ../models/stump_30k/stump_30k.ingp > ./measurements/log_20240529/log_ingp_train_stump_30k
#python3 ./scripts/run.py ../datasets/MipNeRF360/treehill --n_steps 30000 --save_snapshot ../models/treehill_30k/treehill_30k.ingp > ./measurements/log_20240529/log_ingp_train_treehill_30k


#Render
python3 ./scripts/run.py ../datasets/MipNeRF360/bicycle/ --load_snapshot ../models/bicycle_30k/bicycle_30k.ingp --test_transforms ../datasets/MipNeRF360/bicycle/transforms_test.json > ./measurements/log_20240529/log_ingp_render_bicycle_30k.txt
python3 ./scripts/run.py ../datasets/MipNeRF360/bonsai/ --load_snapshot ../models/bonsai_30k/bonsai_30k.ingp --test_transforms ../datasets/MipNeRF360/bonsai/transforms_test.json > ./measurements/log_20240529/log_ingp_render_bonsai_30k.txt
python3 ./scripts/run.py ../datasets/MipNeRF360/counter/ --load_snapshot ../models/counter_30k/counter_30k.ingp --test_transforms ../datasets/MipNeRF360/counter/transforms_test.json > ./measurements/log_20240529/log_ingp_render_counter_30k.txt
python3 ./scripts/run.py ../datasets/MipNeRF360/flowers/ --load_snapshot ../models/flowers_30k/flowers_30k.ingp --test_transforms ../datasets/MipNeRF360/flowers/transforms_test.json > ./measurements/log_20240529/log_ingp_render_flowers_30k.txt
python3 ./scripts/run.py ../datasets/MipNeRF360/garden/ --load_snapshot ../models/garden_30k/garden_30k.ingp --test_transforms ../datasets/MipNeRF360/garden/transforms_test.json > ./measurements/log_20240529/log_ingp_render_garden_30k.txt
python3 ./scripts/run.py ../datasets/MipNeRF360/kitchen/ --load_snapshot ../models/kitchen_30k/kitchen_30k.ingp --test_transforms ../datasets/MipNeRF360/kitchen/transforms_test.json > ./measurements/log_20240529/log_ingp_render_kitchen_30k.txt
python3 ./scripts/run.py ../datasets/MipNeRF360/room/ --load_snapshot ../models/room_30k/room_30k.ingp --test_transforms ../datasets/MipNeRF360/room/transforms_test.json > ./measurements/log_20240529/log_ingp_render_room_30k.txt
python3 ./scripts/run.py ../datasets/MipNeRF360/stump/ --load_snapshot ../models/stump_30k/stump_30k.ingp --test_transforms ../datasets/MipNeRF360/stump/transforms_test.json > ./measurements/log_20240529/log_ingp_render_stump_30k.txt
python3 ./scripts/run.py ../datasets/MipNeRF360/treehill/ --load_snapshot ../models/treehill_30k/treehill_30k.ingp --test_transforms ../datasets/MipNeRF360/treehill/transforms_test.json > ./measurements/log_20240529/log_ingp_render_treehill_30k.txt
