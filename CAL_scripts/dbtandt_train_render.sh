# #Instant-NGP dataset conversion, train & render shell script for DeepBlending & TanksandTemples datasets

# #Conversion
# #cd /work6/jiwon/NeRF/datasets/DeepBlending/drjohnson
# #python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp/scripts/colmap2nerf.py --colmap_matcher exhaustive --run_colmap --aabb_scale 32 --overwrite
# #Train
# #cd /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp
# python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp/scripts/run.py /work6/jiwon/NeRF/datasets/DeepBlending/drjohnson --n_steps 30000 --save_snapshot /work6/jiwon/NeRF/output_full/drjohnson_30k/drjohnson_30k.ingp

# #Conversion
# #cd /work6/jiwon/NeRF/datasets/DeepBlending/playroom
# #python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp/scripts/colmap2nerf.py --colmap_matcher exhaustive --run_colmap --aabb_scale 32 --overwrite
# #Train
# #cd /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp
# python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp/scripts/run.py /work6/jiwon/NeRF/datasets/DeepBlending/playroom --n_steps 30000 --save_snapshot /work6/jiwon/NeRF/output_full/playroom_30k/playroom_30k.ingp

# #Conversion
# #cd /work6/jiwon/NeRF/datasets/Tanks_and_Temples/3dgs/train
# #python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp/scripts/colmap2nerf.py --colmap_matcher exhaustive --run_colmap --aabb_scale 32 --overwrite
# #Train
# #cd /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp
# python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp/scripts/run.py /work6/jiwon/NeRF/datasets/Tanks_and_Temples/3dgs/train --n_steps 30000 --save_snapshot /work6/jiwon/NeRF/output_full/train_30k/train_30k.ingp

# #Conversion
# #cd /work6/jiwon/NeRF/datasets/Tanks_and_Temples/3dgs/truck
# #python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp/scripts/colmap2nerf.py --colmap_matcher exhaustive --run_colmap --aabb_scale 32 --overwrite
# #Train
# #cd /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp
# python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp/scripts/run.py /work6/jiwon/NeRF/datasets/Tanks_and_Temples/3dgs/truck --n_steps 30000 --save_snapshot /work6/jiwon/NeRF/output_full/truck_30k/truck_30k.ingp



cd /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp_jiwon
#Render
python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp_jiwon/scripts/run.py /work6/jiwon/NeRF/datasets/DeepBlending/drjohnson/ --load_snapshot /work6/jiwon/NeRF/output_full/drjohnson_30k/drjohnson_30k.ingp --test_transforms /work6/jiwon/NeRF/datasets/DeepBlending/drjohnson/transforms_test.json > /work6/jiwon/NeRF/CAL_3DGS_rev/fig6_A100_20240820/log_ingp_render_drjohnson_30k.txt

python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp_jiwon/scripts/run.py /work6/jiwon/NeRF/datasets/DeepBlending/playroom/ --load_snapshot /work6/jiwon/NeRF/output_full/playroom_30k/playroom_30k.ingp --test_transforms /work6/jiwon/NeRF/datasets/DeepBlending/playroom/transforms_test.json > /work6/jiwon/NeRF/CAL_3DGS_rev/fig6_A100_20240820/log_ingp_render_playroom_30k.txt

python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp_jiwon/scripts/run.py /work6/jiwon/NeRF/datasets/Tanks_and_Temples/3dgs/train/ --load_snapshot /work6/jiwon/NeRF/output_full/train_30k/train_30k.ingp --test_transforms /work6/jiwon/NeRF/datasets/Tanks_and_Temples/3dgs/train/transforms_test.json > /work6/jiwon/NeRF/CAL_3DGS_rev/fig6_A100_20240820/log_ingp_render_train_30k.txt

python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp_jiwon/scripts/run.py /work6/jiwon/NeRF/datasets/Tanks_and_Temples/3dgs/truck/ --load_snapshot /work6/jiwon/NeRF/output_full/truck_30k/truck_30k.ingp --test_transforms /work6/jiwon/NeRF/datasets/Tanks_and_Temples/3dgs/truck/transforms_test.json > /work6/jiwon/NeRF/CAL_3DGS_rev/fig6_A100_20240820/log_ingp_render_truck_30k.txt