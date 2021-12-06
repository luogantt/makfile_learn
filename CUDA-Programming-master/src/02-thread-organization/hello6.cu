#include <stdio.h>
#include <iostream>
using namespace std;

__global__ void hello_from_gpu()
{
    const int b = blockIdx.x;
    const int c = blockIdx.y;

    const int tx = threadIdx.x;
    const int ty = threadIdx.y;
   // cout<<b<<endl;
    printf("Hello World from block-(%d,%d) and thread-(%d, %d)!\n", b,c, tx, ty);
}

int main(void)
{
    const dim3 grid(3, 2);
    const dim3 block(5, 3);
    //const dim3 block_size(2, 4);
    hello_from_gpu<<<grid, block>>>();
    cudaDeviceSynchronize();
    return 0;
}

