rm -rf build
cmake . -B build -DCMAKE_BUILD_TYPE=RelWithDebInfo -DTCNN_CUDA_ARCHITECTURES=80 -DCMAKE_CUDA_COMPILER=$(which nvcc) -DNGP_BUILD_WITH_GUI=off
cmake --build build --config RelWithDebInfo -j
