#Training data
for DATA in Barn Caterpillar Church Courthouse Ignatius Meetingroom Truck
do
	#Convert
	python ../torch-ngp/scripts/llff2nerf.py /work1/jiwon/datasets/Tanks_and_Temples/TrainingData/$DATA
	#Train
	python ./scripts/run.py ../datasets/nerf_llff_data/$DATA --n_steps 30000 --save_snapshot ../output_full/$DATA\_30k/$DATA\_30k.ingp > ./measurements/log_20240403/log_ingp_train_$DATA\_30k.txt
	#Render
	python ./scripts/run.py ../datasets/nerf_llff_data/$DATA --load_snapshot ../output_full/$DATA\_30k/$DATA\_30k.ingp --test_transforms ../datasets/nerf_llff_data/$DATA/transforms_test.json > ./measurements/log_20240403/log_ingp_render_$DATA\_30k.txtdone
done

#Advanced
for DATA in Temple #Auditorium Ballroom Courtroom Museum Palace Temple
do
	colmap automatic_reconstructor --image_path ./images/advanced/$DATA/images/ --workspace_path ./images/advanced/$DATA
done

#Intermediate
for DATA in Family Train #Family Francis Horse Lighthouse M60 Panther Playground Train
do
	colmap automatic_reconstructor --image_path ./images/intermediate/$DATA/images/ --workspace_path ./images/intermediate/$DATA
done



for DATA in fern flower fortress horns leaves orchids room trex
#for DATA in orchids
do
	#Convert
	python ../torch-ngp/scripts/llff2nerf.py ../datasets/nerf_llff_data/$DATA
	#Train
	python ./scripts/run.py ../datasets/nerf_llff_data/$DATA --n_steps 30000 --save_snapshot ../output_full/$DATA\_30k/$DATA\_30k.ingp > ./measurements/log_20240403/log_ingp_train_$DATA\_30k.txt
	#Render
	python ./scripts/run.py ../datasets/nerf_llff_data/$DATA --load_snapshot ../output_full/$DATA\_30k/$DATA\_30k.ingp --test_transforms ../datasets/nerf_llff_data/$DATA/transforms_test.json > ./measurements/log_20240403/log_ingp_render_$DATA\_30k.txt
done


#Train
#python ./scripts/run.py ../datasets/MipNeRF360/bicycle --n_steps 30000 --save_snapshot ../output_full/bicycle_30k/bicycle_30k.ingp > ./measurements/log_20240312/log_ingp_train_bicycle_30k


#Render
#python ./scripts/run.py ../datasets/MipNeRF360/bicycle/ --load_snapshot ../output_full/bicycle_30k/bicycle_30k.ingp --test_transforms ../datasets/MipNeRF360/bicycle/transforms_test.json > ./measurements/log_20240312/log_ingp_render_bicycle_30k.txt
