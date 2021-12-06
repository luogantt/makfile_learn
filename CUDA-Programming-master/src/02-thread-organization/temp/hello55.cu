#include <stdio.h>
#include <iostream>
#include <cuda_runtime.h>

using namespace std;
__global__ void hello_from_gpu()

{
	const int b =blockIdx.x;
	const int tx=threadIdx.x;
	const int ty=threadIdx.y;

        //cout<<b<<"\n"<<endl;
	printf("%d%d%d\n",b,tx,ty);

}


int main(void)
{
  const dim3 block_size(2,4);
  hello_from_gpu<<<2,block_size>>>();
  cudaDeviceSynchronize();
  //cudaDeviceSynchronize();

  return 0;
}

