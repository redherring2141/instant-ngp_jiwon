cmake . -B build -DCMAKE_BUILD_TYPE=RelWithDebInfo -DTCNN_CUDA_ARCHITECTURES=80 -DCMAKE_CUDA_COMPILER=$(which nvcc)
cmake --build build --config RelWithDebInfo -j
