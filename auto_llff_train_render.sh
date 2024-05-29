for DATA in fern # flower fortress horns leaves orchids room trex
do
	#Train
	python ./scripts/run.py ../datasets/nerf_llff_data/$DATA --n_steps 30000 --save_snapshot ../output_full/$DATA\_30k.ingp > ./measurements/log_20240403/log_ingp_train_$DATA\_30k.txt
	#Render
	#python ./scripts/run.py ../datasets/nerf_llff_data/$DATA --load_snapshot ../output_full/$DATA\_30k/$DATA\_30k.ingp --test_transforms ../datasets/nerf_llff_data/transforms_test.json > ./measurements/log_20240403/log_ingp_render_$DATA\_30k.txt
done


#Train
#python ./scripts/run.py ../datasets/MipNeRF360/bicycle --n_steps 30000 --save_snapshot ../output_full/bicycle_30k/bicycle_30k.ingp > ./measurements/log_20240312/log_ingp_train_bicycle_30k


#Render
#python ./scripts/run.py ../datasets/MipNeRF360/bicycle/ --load_snapshot ../output_full/bicycle_30k/bicycle_30k.ingp --test_transforms ../datasets/MipNeRF360/bicycle/transforms_test.json > ./measurements/log_20240312/log_ingp_render_bicycle_30k.txt
