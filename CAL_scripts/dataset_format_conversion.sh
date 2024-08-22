# Dataset conversion script

# Use colmap2nerf.py for general/DeepBlending/TanksandTemples(3DGS) datasets
# Use torch-ngp's llff2nerf.py for MipNeRF360 and LLFF datasets
# Use torch-ngp's tanks2nerf.py for TanksandTemples(original) datasets

#python main_nerf.py data/TanksAndTemple/Family --workspace trial_nerf_family -O --bound 1.0 --scale 0.33 --dt_gamma 0
#python scripts/llff2nerf.py data/nerf_llff_data/fern --images images_4 --downscale 4 # if you prefer to use the low-resolution images


cd /work6/jiwon/NeRF/datasets/DeepBlending/drjohnson
python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp_jiwon/scripts/colmap2nerf.py --colmap_matcher exhaustive --run_colmap --aabb_scale 32 --overwrite
python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp_jiwon/CAL_scripts/transform_divider.py /work6/jiwon/NeRF/datasets/DeepBlending/drjohnson/

cd /work6/jiwon/NeRF/datasets/DeepBlending/playroom
python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp_jiwon/scripts/colmap2nerf.py --colmap_matcher exhaustive --run_colmap --aabb_scale 32 --overwrite
python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp_jiwon/CAL_scripts/transform_divider.py /work6/jiwon/NeRF/datasets/DeepBlending/playroom/

# cd /work6/jiwon/NeRF/datasets/Tanks_and_Temples/3dgs/train
# python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp_jiwon/scripts/colmap2nerf.py --colmap_matcher exhaustive --run_colmap --aabb_scale 32 --overwrite
# python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp_jiwon/CAL_scripts/transform_divider.py

# cd /work6/jiwon/NeRF/datasets/Tanks_and_Temples/3dgs/truck
# python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp_jiwon/scripts/colmap2nerf.py --colmap_matcher exhaustive --run_colmap --aabb_scale 32 --overwrite
# python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp_jiwon/CAL_scripts/transform_divider.py