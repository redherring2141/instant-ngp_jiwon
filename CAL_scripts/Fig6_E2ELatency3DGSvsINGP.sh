str1="A100"
str2="Xavier"

# #Train
# for DATA in drjohnson playroom train truck bicycle bonsai counter flowers garden kitchen room stump treehill
# do
#     #A100
#     python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp/scripts/run.py /work5/jiwon/NeRF/datasets/$DATA --n_steps 30000 --save_snapshot /work5/jiwon/NeRF/models_pretrained/$DATA\_30k/$DATA\_30k.ingp
# done

#Inference
#for DATA in playroom drjohnson train truck counter bonsai room kitchen treehill flowers stump garden bicycle 
for DATA in counter bonsai room kitchen treehill flowers stump garden bicycle 
do
    if [ $1 == $str1 ];
    then
        #A100
        python3 /work6/jiwon/NeRF/CAL_3DGS_rev/instant-ngp/scripts/run.py /work5/jiwon/NeRF/datasets/$DATA --load_snapshot /work5/jiwon/NeRF/models_pretrained/$DATA\_30k/$DATA\_30k.ingp --test_transforms /work5/jiwon/NeRF/datasets/$DATA/transforms_test.json # > /work6/jiwon/NeRF/CAL_3DGS_rev/fig6_A100_20240822/log_ingp_render_drjohnson_30k.txt\
    else
        #Xavier-AGX
        python3 /home/jetson-agx/NeRF/CAL_3DGS_rev/instant-ngp/scripts/run.py /home/jetson-agx/NeRF/datasets/$DATA --load_snapshot /home/jetson-agx/NeRF/models_pretrained/$DATA\_30k/$DATA\_30k.ingp --test_transforms /home/jetson-agx/NeRF/datasets/$DATA/transforms_test.json # > /home/jetson-agx/NeRF/CAL_3DGS_rev/fig6_A100_20240822/log_ingp_render_drjohnson_30k.txt
    fi
done